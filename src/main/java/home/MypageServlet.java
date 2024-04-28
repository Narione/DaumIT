package home;

import java.io.IOException;
import java.io.PrintWriter;

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

@WebServlet("/mypage")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext servletContext = getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		this.service = new MemberService(session);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터로 id값을 받아와야 한다.
		request.getRequestDispatcher("/WEB-INF/views/home/mypage.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String password = request.getParameter("password");
		MemberVO memVO = (MemberVO) session.getAttribute("member");
		String id = memVO.getId();
		// id와 currentPassword에 해당하는 member를 조회하여 가져온다.
		MemberVO vo = service.getMember(id);
		if (vo != null) {
			vo.setPassword(password);
			int executeUpdate = service.changePassword(vo);
			if (executeUpdate > 0) {
				response.sendRedirect("/index");
			}
		} else {
			// 비밀번호 변경페이지로 그대로 이동
			response.sendRedirect("/mypage");
		}
		
	
	}


}
