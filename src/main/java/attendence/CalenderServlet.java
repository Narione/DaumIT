package attendence;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

/**
 * Servlet implementation class CalenderServlet
 */
@WebServlet("/att")
public class CalenderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AttendenceService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext servletContext = getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		this.service = new AttendenceService(session);
	}
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestDateStr = request.getParameter("requestDate");
		String startDate = request.getParameter("startDate");
		String lastDate = request.getParameter("lastDate");
		
		
		
		AttNumVO parNum =new AttNumVO(startDate,lastDate);
		List<AttNumVO> AN = service.attNum(parNum);
		
		
		
		
		LocalDate requestDate = null;
		if (requestDateStr == null) {
			requestDate = LocalDate.now();
		}else {
			requestDate = LocalDate.now();
		}
		request.setAttribute("requestDate", requestDate);
		request.setAttribute("AN", AN);
		request.getRequestDispatcher("/WEB-INF/views/attendence/calendar.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
