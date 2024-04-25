package home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import member.MemberService;
import member.MemberVO;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/checkId")
public class IdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MemberService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext servletContext = getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		this.service = new MemberService(session);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		resp.setContentType("application/x-json; charset=utf-8");
//		resp.getWriter().print(jobj); // 전송이 되는 부분
		response.setContentType("application/x-json; charset=utf-8");

		String id=(String)request.getParameter("id");
		PrintWriter out= response.getWriter();
		
		MemberVO vo = service.getMember(id);
		
		// DB에서 id가 있냐 없냐  있으면 true 없으면 false
		if(vo != null) {
			out.print(true);
		}else {
			out.print(false);
		}
	}


}
