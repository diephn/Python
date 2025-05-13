package filter;

import java.io.IOException;
import jakarta.servlet.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class SessionFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {}

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("onlineTime") == null) {
            // Tạo session mới nếu chưa có
            session = req.getSession(true);
            session.setAttribute("onlineTime", System.currentTimeMillis());
        }

        // Cho phép tiếp tục xử lý
        chain.doFilter(request, response);
    }

    public void destroy() {}
}
