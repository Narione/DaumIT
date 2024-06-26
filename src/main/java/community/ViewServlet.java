package community;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/community/view")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommunityService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new CommunityService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터로 id값을 받아와야 한다.
        int searchNo = Integer.parseInt(request.getParameter("no"));
        CommunityVO vo = service.getCommunity(searchNo);
        int viewCount = service.totalComment(searchNo);
        service.updateHits(searchNo);
        request.setAttribute("community", vo);
        request.setAttribute("count", viewCount);
        request.getRequestDispatcher("/WEB-INF/views/community/view.jsp").forward(request, response);
	}

}
