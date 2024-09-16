@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Logic để hiển thị trang mua hàng, nếu cần
        RequestDispatcher dispatcher = request.getRequestDispatcher("purchase.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý dữ liệu từ form
        String category = request.getParameter("category");
        String dealerName = request.getParameter("dealer_name");
        String code = request.getParameter("code");
        String productName = request.getParameter("product_name");
        String companyName = request.getParameter("company_name");
        String quantity = request.getParameter("quantity");
        String unit = request.getParameter("unit");
        String perUnitPrice = request.getParameter("per_unit_price");
        String productExpDate = request.getParameter("product_exp_date");
        String purchaseDate = request.getParameter("purchase_date");

        // Logic để thêm dữ liệu mua hàng vào cơ sở dữ liệu
        addPurchaseToDatabase(category, dealerName, code, productName, companyName, quantity, unit, perUnitPrice, productExpDate, purchaseDate);

        // Chuyển hướng đến trang thành công hoặc danh sách mua hàng
        response.sendRedirect("PurchaseServlet?action=list"); // Hoặc một hành động khác
    }

    private void addPurchaseToDatabase(String category, String dealerName, String code, String productName, String companyName,
                                       String quantity, String unit, String perUnitPrice, String productExpDate, String purchaseDate) {
        // Logic kết nối cơ sở dữ liệu và thêm dữ liệu
    }
}