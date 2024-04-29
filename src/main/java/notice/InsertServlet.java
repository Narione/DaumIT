package notice;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/notice/insert")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/notice/write.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int writer = Integer.parseInt(request.getParameter("writer"));
		String title = request.getParameter("title");
		String content = request.getParameter("editortx1");
		
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		NoticeService service = new NoticeService(session);
		int insertNotice = service.insertNotice(new NoticeVO(title,content,writer));
		if (insertNotice > 0) {
			// 등록 성공
			response.sendRedirect("/notice");
		} else {
			// 등록 실패
			request.setAttribute("msg", "등록 실패");
			request.getRequestDispatcher("/WEB-INF/views/notice/write.jsp").forward(request, response);
		}
	}

}
