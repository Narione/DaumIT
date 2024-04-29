package notice;

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


@WebServlet("/notice")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NoticeService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new NoticeService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("searchType");
		String word = request.getParameter("searchWord");
		
		//페이징 관련 코드
		String pageNo = request.getParameter("currentPageNo");
		int currentPageNo = pageNo == null ? 1:Integer.parseInt(pageNo);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(currentPageNo);
		paginationInfo.setRecordCountPerPage(10);
		paginationInfo.setPageSize(10);
		SearchVO vo = new SearchVO(type, word);
		
		int totalCount = service.getNoticeListCount(vo);
		paginationInfo.setTotalRecordCount(totalCount);
		
		vo.setFirstRecordIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastRecordIndex(paginationInfo.getLastRecordIndex());
		
		List<NoticeVO> list = service.getNoticeList(vo);
		request.setAttribute("notice", list);
		request.setAttribute("pagination", paginationInfo);
		request.getRequestDispatcher("/WEB-INF/views/notice/list.jsp").forward(request, response);
	}

}
