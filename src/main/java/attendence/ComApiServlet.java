package attendence;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import common.SearchVO;
import member.MemberService;
import member.MemberVO;

/**
 * Servlet implementation class ComApiServlet
 */
@WebServlet("/att/comapi")
public class ComApiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext servletContext = getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		this.service = new MemberService(session);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchWord = request.getParameter("searchWord");
		SearchVO vo = new SearchVO(searchWord);
		List<CompanyVO> comList = service.getCompanyList(vo);
		request.setAttribute("companies", comList);
		String someValue = request.getParameter("id"); 		
	    HttpSession session = request.getSession();
	    session.setAttribute("someKey", someValue);
		
		request.getRequestDispatcher("/WEB-INF/views/attendence/comApi.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false); // false는 세션이 없으면 null을 반환하도록 합니다.
	    String someValue = null;
	    if (session != null) {
	        someValue = (String) session.getAttribute("someKey");
	    }

		MemberVO vo = service.getMember(someValue);
		
		String comName = request.getParameter("comName");
		System.out.println(comName);
		if (vo != null) {
			vo.setWorkerCode(comName);
			int executeUpdate = service.changeCompany(vo);
			if (executeUpdate > 0) {
				System.out.println("성공");
			}
		} else {
		}
		
	    if (session != null) {
	        session.removeAttribute("someKey");
	    }
	
	}

}
