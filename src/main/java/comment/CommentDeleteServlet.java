package comment;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

/**
 * Servlet implementation class CommentDeleteServlet
 */
@WebServlet("/comment/delete")
public class CommentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommentService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new CommentService(sqlSession);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int deleteNo = Integer.parseInt(request.getParameter("no"));
		int boardNum = Integer.parseInt(request.getParameter("num"));
		int deleteComment = service.deleteComment(deleteNo);
        if (deleteComment > 0) {
            response.sendRedirect("/community/view?no="+boardNum);
        } else {
            request.setAttribute("msg", "삭제 실패");
            request.getRequestDispatcher("/WEB-INF/views/community/view.jsp").forward(request, response);
        }
	}


}
