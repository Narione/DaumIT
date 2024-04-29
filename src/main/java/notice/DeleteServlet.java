package notice;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/notice/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NoticeService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new NoticeService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int deleteNo = Integer.parseInt(request.getParameter("no"));
		int deleteBoard = service.deleteNotice(deleteNo);
        if (deleteBoard > 0) {
            response.sendRedirect("/notice");
        } else {
            request.setAttribute("msg", "삭제 실패");
            request.getRequestDispatcher("/WEB-INF/views/notice/view.jsp").forward(request, response);
        }
	}


}
