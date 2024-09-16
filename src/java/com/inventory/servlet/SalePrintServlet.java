@WebServlet("/SalePrintServlet")
public class SalePrintServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String memberId = request.getParameter("member_id");

        // Kết nối đến cơ sở dữ liệu và lấy thông tin hóa đơn
        List<SaleRecord> saleRecords = new ArrayList<>();
        String memberName = null;

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/inventory", "root", "12345678");
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM membership WHERE member_id=?")) {
            ps.setString(1, memberId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                memberName = rs.getString("name");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Lấy tất cả các bản ghi bán hàng
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/inventory", "root", "12345678");
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM sale")) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SaleRecord record = new SaleRecord();
                record.setCode(rs.getString("code"));
                record.setCategory(rs.getString("category"));
                record.setProductName(rs.getString("product_name"));
                record.setQuantity(rs.getInt("quantity"));
                record.setUnit(rs.getString("unit"));
                record.setPerUnitPrice(rs.getDouble("per_unit_price"));
                record.setTotalPrice(rs.getDouble("total_price"));
                saleRecords.add(record);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Đặt các thuộc tính vào request
        request.setAttribute("memberName", memberName);
        request.setAttribute("saleRecords", saleRecords);
        request.getRequestDispatcher("Sale_print_member.jsp").forward(request, response);
    }
}