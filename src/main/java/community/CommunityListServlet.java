package community;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import common.PaginationInfo;
import common.SearchVO;
import notice.NoticeService;
import notice.NoticeVO;

@WebServlet("/community")
public class CommunityListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommunityService service;
	private NoticeService notiService;

	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new CommunityService(sqlSession);
		notiService = new NoticeService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("searchType");
		String word = request.getParameter("searchWord");

		// 페이징 관련 코드
		String pageNo = request.getParameter("currentPageNo");
		int currentPageNo = pageNo == null ? 1 : Integer.parseInt(pageNo);

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(currentPageNo);
		paginationInfo.setRecordCountPerPage(10);
		paginationInfo.setPageSize(10);
		SearchVO vo = new SearchVO(type, word);

		int totalCount = service.getCommunityListCount(vo);
		paginationInfo.setTotalRecordCount(totalCount);

		vo.setFirstRecordIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastRecordIndex(paginationInfo.getLastRecordIndex());

		List<CommunityVO> list = service.getCommunityList(vo);
		List<NoticeVO> notiList = notiService.getRecentNotice();
		int maxLength = 45;
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getTitle().length() > maxLength) {
				list.get(i).setTitle(list.get(i).getTitle().substring(0,maxLength)+"...");
			}
		}
		request.setAttribute("community", list);
		request.setAttribute("notice", notiList);
		request.setAttribute("pagination", paginationInfo);
		request.getRequestDispatcher("/WEB-INF/views/community/list.jsp").forward(request, response);
	}

}
