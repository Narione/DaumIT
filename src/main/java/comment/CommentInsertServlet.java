package comment;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/comment/insert")
public class CommentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommentService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new CommentService(sqlSession);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardNum = Integer.parseInt(request.getParameter("no"));
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		
		int insertComment = service.insertComment(new CommentVO(boardNum,id,content));
		if(insertComment > 0) {
			response.sendRedirect("/community/view?no="+boardNum);
		}else {
			request.setAttribute("msg", "등록 실패");
			request.getRequestDispatcher("/WEB-INF/views/community/write.jsp").forward(request, response);
		}
	}

}
