@WebServlet("/Purchase2Servlet")
public class Purchase2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String mobileNo = request.getParameter("mobile_no");

        // Xử lý dữ liệu (thêm vào cơ sở dữ liệu)
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "12345678");
             PreparedStatement ps = conn.prepareStatement("INSERT INTO purchases (name, category, mobile_no) VALUES (?, ?, ?)")) {

            ps.setString(1, name);
            ps.setString(2, category);
            ps.setString(3, mobileNo);
            ps.executeUpdate();

            // Chuyển hướng về trang chính hoặc trang thành công
            response.sendRedirect("purchase2.jsp?success=true");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}