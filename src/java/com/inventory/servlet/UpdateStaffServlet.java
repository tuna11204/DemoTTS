@WebServlet("/UpdateStaffServlet")
public class UpdateStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User user = new User();
        user.setId(Integer.parseInt(request.getParameter("id"))); // Giả sử có trường ID
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        // Thêm các trường khác nếu cần

        // Gọi phương thức cập nhật từ UserDao
        int result = UserDao.updateStaff(user);

        // Chuyển hướng về trang Staff.jsp
        response.sendRedirect("Staff.jsp");
    }
}