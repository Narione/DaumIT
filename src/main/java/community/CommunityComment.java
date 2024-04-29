package community;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import comment.CommentService;
import comment.CommentVO;

@WebServlet("/community/comment")
public class CommunityComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommentService service;
	Gson gson = new GsonBuilder()
		    .registerTypeAdapter(LocalDate.class, new LocalDateTypeAdapter())
		    .create();
	
	

	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new CommentService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		// db조회
		List<CommentVO> list = service.getCommentList(boardNum);

		// JSON으로 변환
		String jsonComment = gson.toJson(list);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// JSON 응답을 전송
		PrintWriter out = response.getWriter();
		out.print(jsonComment);
	
		out.flush();

	}
}
