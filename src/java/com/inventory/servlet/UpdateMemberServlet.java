@WebServlet("/UpdateMemberServlet")
public class UpdateMemberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User user = new User();
        user.setId(Integer.parseInt(request.getParameter("id"))); // Giả sử có trường ID
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        // Thêm các trường khác nếu cần

        // Gọi phương thức cập nhật từ UserDao
        int result = UserDao.updateMember(user);

        // Kiểm tra kết quả cập nhật và chuyển hướng
        if (result > 0) {
            response.sendRedirect("MemberList.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to connect to database");
            RequestDispatcher dispatcher = request.getRequestDispatcher("UpdateMember.jsp");
            dispatcher.forward(request, response);
        }
    }
}