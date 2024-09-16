@WebServlet("/SalesInfoServlet")
public class SalesInfoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SaleRecord> sales = new ArrayList<>();

        // Kết nối đến cơ sở dữ liệu và lấy thông tin bán hàng
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "12345678")) {
                PreparedStatement ps = con.prepareStatement("SELECT * FROM sales");
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    SaleRecord record = new SaleRecord();
                    record.setDate(rs.getDate("date"));
                    record.setCategory(rs.getString("category"));
                    record.setProductName(rs.getString("product_name"));
                    record.setTagNumber(rs.getString("tag_number"));
                    record.setQuantity(rs.getInt("quantity"));
                    record.setUnit(rs.getString("unit"));
                    record.setPerUnitPrice(rs.getDouble("per_unit_price"));
                    record.setTotalPrice(rs.getDouble("total_price"));
                    sales.add(record);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("sales", sales);
        request.getRequestDispatcher("SalesInfo.jsp").forward(request, response);
    }
}