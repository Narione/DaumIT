package notice;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/notice/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NoticeService service;
	
	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new NoticeService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int searchNo = Integer.parseInt(request.getParameter("no"));
		NoticeVO vo = service.getNotice(searchNo);

        request.setAttribute("notice", vo);
        request.getRequestDispatcher("/WEB-INF/views/notice/update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
        String title = request.getParameter("title");
        String content = request.getParameter("editortx2");

		int updateNotice = service.updateNotice(new NoticeVO(no,title,content));
        if (updateNotice > 0) {
            // 등록 성공
            response.sendRedirect("/notice");
        } else {
            // 등록 실패
            request.setAttribute("msg", "수정 실패");
            request.getRequestDispatcher("/WEB-INF/views/notice/update.jsp").forward(request, response);
        }
	}

}
