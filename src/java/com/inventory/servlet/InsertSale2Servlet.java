@WebServlet("/InsertSale2Servlet")
public class InsertSale2Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String category = request.getParameter("category");
        String productName = request.getParameter("product_name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String unit = request.getParameter("unit");
        double perUnitPrice = Double.parseDouble(request.getParameter("per_unit_price"));
        double totalPrice = Double.parseDouble(request.getParameter("total_price"));
        String date = request.getParameter("date");

        // Thực hiện thêm dữ liệu vào cơ sở dữ liệu
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/inventory", "root", "12345678")) {
            String sql = "INSERT INTO sale(code, category, product_name, quantity, unit, per_unit_price, total_price, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, code);
                stmt.setString(2, category);
                stmt.setString(3, productName);
                stmt.setInt(4, quantity);
                stmt.setString(5, unit);
                stmt.setDouble(6, perUnitPrice);
                stmt.setDouble(7, totalPrice);
                stmt.setString(8, date);

                int result = stmt.executeUpdate();
                if (result >= 1) {
                    response.sendRedirect("sales.jsp?susMsg=Congratulations! Data inserted successfully.");
                } else {
                    request.setAttribute("errorMessage", "Unable to insert data.");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("InsertSale2.jsp");
                    dispatcher.forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database connection error.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("InsertSale2.jsp");
            dispatcher.forward(request, response);
        }
    }
}