@WebServlet("/UpdatePurchaseServlet")
public class UpdatePurchaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User user = new User();
        user.setId(Integer.parseInt(request.getParameter("id"))); // Giả sử có trường ID
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        // Thêm các trường khác nếu cần

        // Gọi phương thức cập nhật từ UserDao
        int result = UserDao.updatepurchase(user);

        // Chuyển hướng về trang ProductList.jsp
        response.sendRedirect("ProductList.jsp");
    }
}