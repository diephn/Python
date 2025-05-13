package listener;

import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;
import jakarta.servlet.ServletContext;

public class SessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        // Khi session được tạo, lưu thời gian vào ServletContext (log hoặc đếm nếu cần)
        ServletContext context = se.getSession().getServletContext();
        context.log("Session được tạo lúc: " + System.currentTimeMillis());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        ServletContext context = se.getSession().getServletContext();
        context.log("Session đã bị hủy.");
    }
}
