package community;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/community/insert")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommunityService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new CommunityService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/community/write.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int writer = Integer.parseInt(request.getParameter("writer"));
		String title = request.getParameter("title");
		String content = request.getParameter("editortx1");

		int insertCommu = service.insertCommunity(new CommunityVO(title,content,writer));
		if (insertCommu > 0) {
			// 등록 성공
			response.sendRedirect("/community");
		} else {
			// 등록 실패
			request.setAttribute("msg", "등록 실패");
			request.getRequestDispatcher("/WEB-INF/views/community/write.jsp").forward(request, response);
		}
	}

}
