@WebServlet("/InsertSaleServlet")
public class InsertSaleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User user = new User();
        user.setCode(request.getParameter("code"));
        user.setCategory(request.getParameter("category"));
        user.setProductName(request.getParameter("product_name"));
        user.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        user.setUnit(request.getParameter("unit"));
        user.setPerUnitPrice(Double.parseDouble(request.getParameter("per_unit_price")));
        user.setTotalPrice(Double.parseDouble(request.getParameter("total_price")));
        user.setDate(request.getParameter("date"));

        // Gọi phương thức lưu từ UserDao
        int result = UserDao.saveSales(user);

        // Kiểm tra kết quả lưu và chuyển hướng
        if (result > 0) {
            response.sendRedirect("sales.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to connect to database");
            RequestDispatcher dispatcher = request.getRequestDispatcher("InsertSale.jsp");
            dispatcher.forward(request, response);
        }
    }
}