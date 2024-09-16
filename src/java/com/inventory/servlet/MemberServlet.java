@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");

            // Thực hiện lưu dữ liệu vào cơ sở dữ liệu
            try {
                // Kết nối đến cơ sở dữ liệu và thêm thành viên
                Class.forName("com.mysql.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "12345678")) {
                    PreparedStatement ps = con.prepareStatement("INSERT INTO members (name, email) VALUES (?, ?)");
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.executeUpdate();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect("member.jsp?success=true");
        }
    }
}