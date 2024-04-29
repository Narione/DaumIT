package attendence;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


/**
 * Servlet implementation class AttendServlet
 */
@WebServlet("/att/attend")
public class AttendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AttendenceService service;
    
	@Override
		public void init() throws ServletException {
			ServletContext servletContext = getServletContext();
			SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
			this.service = new AttendenceService(session);
		}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<AttendenceVO> list = service.getMemberList();
		System.out.println(list);
		request.setAttribute("memberList", list);
		
		request.getRequestDispatcher("/WEB-INF/views/attendence/attend.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String attDate = request.getParameter("attDate");
        String[] memos = request.getParameterValues("memo");
        String[] memberNames = request.getParameterValues("memberName");
        String[] memberIds = request.getParameterValues("memberId");
        String[] memberNums = request.getParameterValues("memberNum");
        String[] attStrings = request.getParameterValues("att");

		
        ServletContext servletContext = request.getServletContext();
        SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
        AttendenceService service = new AttendenceService(session);
		
        for (int i = 0; i<memberNames.length; i++) {
        	
        	String memberName =memberNames[i];
        	String memberId = memberIds[i];
        	String memberNum = memberNums[i];
        	String attString =attStrings[i];
        	if (attString == "") {
				attString="N";
			}
        	String memo = memos[i];
        	int attIndex = i+1;
        
        	
        	int executeUpdate = service.insertAtt(new AttendenceVO(attDate, memberName,memberId,memberNum,attString, memo, attIndex));
        	if (executeUpdate <= 0) {
        		response.getWriter().write("<p>저장에 실패했습니다.<p>");
                
        	} 
        	
        }
        response.getWriter().write("<script>window.close();</script>");

		
		
		
		
	
	
	}


}
