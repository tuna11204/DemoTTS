@WebServlet("/DeletePurchaseServlet")
public class DeletePurchaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy ID giao dịch từ request
        int purchaseId = Integer.parseInt(request.getParameter("id"));

        // Gọi phương thức xóa từ UserDao
        boolean result = UserDao.deletePurchase(purchaseId);

        // Chuyển hướng đến trang danh sách sản phẩm
        if (result) {
            response.sendRedirect("../ProductList.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to delete purchase");
            RequestDispatcher dispatcher = request.getRequestDispatcher("../ProductList.jsp");
            dispatcher.forward(request, response);
        }
    }
}