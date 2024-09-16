@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("name");
        String pwd = request.getParameter("password");

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "12345678");
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM staff WHERE staff_id='" + userid + "' AND password='" + pwd + "'");

            if (rs.next()) {
                request.getSession().setAttribute("userid", userid);
                response.sendRedirect("main.jsp?name=" + userid);
            } else {
                request.setAttribute("errorMessage", "Invalid password");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Xử lý lỗi nếu cần
        } finally {
            try {
                if (rs != null) rs.close();
                if (st != null) st.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}