package common;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import member.MemberService;
import member.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MemberService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext servletContext = getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		this.service = new MemberService(session);
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/common/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchId = request.getParameter("id");
		String searchPassword = request.getParameter("password");
		
		MemberVO vo = service.currentPassword(new MemberVO(searchId, searchPassword));
		
		// id에 해당하는 데이터를 조회하여 가져온다.
		if (vo != null) {
			// 서버에 사용자 정보를 저장하고 /member/list로 이동
			// 세션은 HttpSession 객체를 통해서 관리할 수 있다.
			HttpSession session = request.getSession();
			session.setAttribute("member", vo);
			
			response.sendRedirect("/index");
		} else {
			// 사용자가 없으면 로그인 페이지에 해당하는 사용자가 없다고 알려줌
			request.setAttribute("msg", "해당하는 사용자가 존재하지 않습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/login.jsp").forward(request, response);
		}
	
	}

}
