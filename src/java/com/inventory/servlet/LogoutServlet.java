import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy session của người dùng
        HttpSession session = request.getSession();

        // Xóa thông tin người dùng khỏi session
        session.setAttribute("userid", null);

        // Hủy bỏ toàn bộ session của người dùng
        session.invalidate();

        // Chuyển hướng người dùng về trang index.jsp
        response.sendRedirect("index.jsp");
    }
}