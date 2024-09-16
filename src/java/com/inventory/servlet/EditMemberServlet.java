@WebServlet("/EditMemberServlet")
public class EditMemberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User user = new User();
        user.setId(Integer.parseInt(request.getParameter("id")));
        user.setMemberId(request.getParameter("member_id"));
        user.setName(request.getParameter("name"));
        user.setGender(request.getParameter("gender"));
        user.setPassword(request.getParameter("password"));
        user.setEmail(request.getParameter("email"));
        user.setMobileNo(request.getParameter("mobile_no"));
        user.setNid(request.getParameter("nid"));
        user.setPreAddress(request.getParameter("pre_address"));
        user.setPerAddress(request.getParameter("per_address"));
        user.setPayment(Double.parseDouble(request.getParameter("payment")));
        user.setCategory(request.getParameter("category"));
        user.setDate(request.getParameter("date"));

        // Gọi phương thức cập nhật từ UserDao
        boolean result = UserDao.updateUser(user);

        // Kiểm tra kết quả và chuyển hướng
        if (result) {
            response.sendRedirect("memberList.jsp"); // Redirect tới danh sách thành viên
        } else {
            request.setAttribute("errorMessage", "Unable to update member information");
            RequestDispatcher dispatcher = request.getRequestDispatcher("EditMember.jsp?id=" + user.getId());
            dispatcher.forward(request, response);
        }
    }
}