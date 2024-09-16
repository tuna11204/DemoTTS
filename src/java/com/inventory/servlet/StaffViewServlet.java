@WebServlet("/StaffViewServlet")
public class StaffViewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("addStaff".equals(action)) {
            String staffId = request.getParameter("staff_id");
            String password = request.getParameter("password");
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String mobileNo = request.getParameter("mobile_no");
            String nid = request.getParameter("nid");
            String preAddress = request.getParameter("pre_address");
            String perAddress = request.getParameter("per_address");
            String category = request.getParameter("category");
            String date = request.getParameter("date");

            // Thực hiện lưu dữ liệu vào cơ sở dữ liệu
            try {
                Class.forName("com.mysql.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "12345678")) {
                    PreparedStatement ps = con.prepareStatement("INSERT INTO staff (staff_id, password, name, gender, mobile_no, nid, pre_address, per_address, category, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                    ps.setString(1, staffId);
                    ps.setString(2, password);
                    ps.setString(3, name);
                    ps.setString(4, gender);
                    ps.setString(5, mobileNo);
                    ps.setString(6, nid);
                    ps.setString(7, preAddress);
                    ps.setString(8, perAddress);
                    ps.setString(9, category);
                    ps.setString(10, date);
                    ps.executeUpdate();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect("Staff.jsp?success=true");
        }
    }
}