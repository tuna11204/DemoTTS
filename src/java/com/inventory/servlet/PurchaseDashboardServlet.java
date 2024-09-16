@WebServlet("/PurchaseDashboardServlet")
public class PurchaseDashboardServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("addPurchase".equals(action)) {
            String productId = request.getParameter("productId");
            String quantity = request.getParameter("quantity");
            // Thực hiện lưu dữ liệu vào cơ sở dữ liệu
            try {
                // Kết nối đến cơ sở dữ liệu và thêm đơn hàng
                Class.forName("com.mysql.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory",