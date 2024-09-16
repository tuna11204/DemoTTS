@WebServlet("/DeleteMemberServlet")
public class DeleteMemberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy ID thành viên từ request
        int memberId = Integer.parseInt(request.getParameter("id"));

        // Gọi phương thức xóa từ UserDao
        boolean result = UserDao.deleteMember(memberId);

        // Chuyển hướng đến trang danh sách thành viên
        if (result) {
            response.sendRedirect("../MemberList.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to delete member");
            RequestDispatcher dispatcher = request.getRequestDispatcher("../MemberList.jsp");
            dispatcher.forward(request, response);
        }
    }
}