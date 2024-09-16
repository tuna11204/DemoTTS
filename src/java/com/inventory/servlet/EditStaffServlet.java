@WebServlet("/EditStaffServlet")
public class EditStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User user = new User();
        user.setId(Integer.parseInt(request.getParameter("id")));
        user.setStaffId(request.getParameter("staff_id"));
        user.setPassword(request.getParameter("password"));
        user.setName(request.getParameter("name"));
        user.setGender(request.getParameter("gender"));
        user.setMobileNo(request.getParameter("mobile_no"));
        user.setNid(request.getParameter("nid"));
        user.setPreAddress(request.getParameter("pre_address"));
        user.setPerAddress(request.getParameter("per_address"));
        user.setCategory(request.getParameter("category"));
        user.setDate(request.getParameter("date"));

        // Gọi phương thức cập nhật từ UserDao
        boolean result = UserDao.updateStaff(user);

        // Kiểm tra kết quả cập nhật và chuyển hướng
        if (result) {
            response.sendRedirect("Dealership.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to update staff information");
            RequestDispatcher dispatcher = request.getRequestDispatcher("EditStaff.jsp?id=" + user.getId());
            dispatcher.forward(request, response);
        }
    }
}