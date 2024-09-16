@WebServlet("/EditPurchaseServlet")
public class EditPurchaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng Purchase và lấy thông tin từ request
        Purchase purchase = new Purchase();
        purchase.setId(Integer.parseInt(request.getParameter("id")));
        purchase.setCategory(request.getParameter("category"));
        purchase.setDealerName(request.getParameter("dealer_name"));
        purchase.setCode(request.getParameter("code"));
        purchase.setProductName(request.getParameter("product_name"));
        purchase.setCompanyName(request.getParameter("company_name"));
        purchase.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        purchase.setUnit(request.getParameter("unit"));
        purchase.setPerUnitPrice(Double.parseDouble(request.getParameter("per_unit_price")));
        purchase.setProductExpDate(request.getParameter("product_exp_date"));
        purchase.setPurchaseDate(request.getParameter("purchase_date"));

        // Gọi phương thức cập nhật từ PurchaseDao
        boolean result = PurchaseDao.updatePurchase(purchase);

        // Kiểm tra kết quả và chuyển hướng
        if (result) {
            response.sendRedirect("purchase.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to update purchase information");
            RequestDispatcher dispatcher = request.getRequestDispatcher("EditPurchase.jsp?id=" + purchase.getId());
            dispatcher.forward(request, response);
        }
    }
}