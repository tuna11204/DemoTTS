@WebServlet("/InsertStaffServlet")
public class InsertStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User user = new User();
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        // Thêm các trường khác nếu cần

        // Gọi phương thức lưu từ UserDao
        int result = UserDao.saveStaff(user);

        // Kiểm tra kết quả lưu và chuyển hướng
        if (result > 0) {
            response.sendRedirect("Staff.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to connect to database");
            RequestDispatcher dispatcher = request.getRequestDispatcher("InsertStaff.jsp");
            dispatcher.forward(request, response);
        }
    }
}