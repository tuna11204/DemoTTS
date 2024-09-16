@WebServlet("/DeleteStaffServlet")
public class DeleteStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy ID nhân viên từ request
        int staffId = Integer.parseInt(request.getParameter("id"));

        // Gọi phương thức xóa từ UserDao
        boolean result = UserDao.deleteStaff(staffId);

        // Chuyển hướng đến trang danh sách nhân viên
        if (result) {
            response.sendRedirect("../Staff.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to delete staff member");
            RequestDispatcher dispatcher = request.getRequestDispatcher("../Staff.jsp");
            dispatcher.forward(request, response);
        }
    }
}