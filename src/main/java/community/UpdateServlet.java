package community;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/community/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommunityService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new CommunityService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int searchNo = Integer.parseInt(request.getParameter("no"));
		CommunityVO vo = service.getCommunity(searchNo);

        request.setAttribute("community", vo);
        request.getRequestDispatcher("/WEB-INF/views/community/update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
        String title = request.getParameter("title");
        String content = request.getParameter("editortx2");

		int updateCommu = service.updateCommunity(new CommunityVO(no,title,content));
        if (updateCommu > 0) {
            // 등록 성공
            response.sendRedirect("/community");
        } else {
            // 등록 실패
            request.setAttribute("msg", "수정 실패");
            request.getRequestDispatcher("/WEB-INF/views/community/update.jsp").forward(request, response);
        }
	}

}
