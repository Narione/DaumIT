package comment;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/comment/update")
public class CommentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommentService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new CommentService(sqlSession);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
        String content = request.getParameter("content");
        int boardNum = Integer.parseInt(request.getParameter("boardNum"));
        

		int updateComment = service.updateComment(new CommentVO(no,content));
        if (updateComment > 0) {
            // 등록 성공
            response.sendRedirect("/community/view?no="+boardNum);
        } else {
            // 등록 실패
            request.setAttribute("msg", "수정 실패");
            request.getRequestDispatcher("/WEB-INF/views/community/update.jsp").forward(request, response);
        }
	}

}
