package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class OnlineTimeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        if (session.getAttribute("onlineTime") == null) {
            long startTime = System.currentTimeMillis();
            session.setAttribute("onlineTime", startTime);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/online.jsp");
        rd.forward(request, response);
    }
}
