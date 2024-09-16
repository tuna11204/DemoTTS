@WebServlet("/DeleteSaleServlet")
public class DeleteSaleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy ID giao dịch từ request
        int saleId = Integer.parseInt(request.getParameter("id"));

        // Gọi phương thức xóa từ UserDao
        boolean result = UserDao.deleteSale(saleId);

        // Chuyển hướng đến trang danh sách giao dịch
        if (result) {
            response.sendRedirect("../sales.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to delete sale");
            RequestDispatcher dispatcher = request.getRequestDispatcher("../sales.jsp");
            dispatcher.forward(request, response);
        }
    }
}