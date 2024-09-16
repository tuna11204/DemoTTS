@WebServlet("/EditDealerServlet")
public class EditDealerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Khởi tạo đối tượng User và lấy thông tin từ request
        User dealer = new User();
        dealer.setId(Integer.parseInt(request.getParameter("id")));
        dealer.setDealerName(request.getParameter("dealer_name"));
        dealer.setBranch(request.getParameter("branch"));
        dealer.setDealerId(request.getParameter("dealer_id"));
        dealer.setContact(request.getParameter("contact"));
        dealer.setAddress(request.getParameter("address"));
        dealer.setAgentName(request.getParameter("agent_name"));
        dealer.setAgentContact(request.getParameter("agent_contact"));
        dealer.setDate(request.getParameter("date"));

        // Gọi phương thức cập nhật từ UserDao
        boolean result = UserDao.updateDealer(dealer);

        // Kiểm tra kết quả và chuyển hướng
        if (result) {
            response.sendRedirect("dealerList.jsp"); // Redirect tới danh sách đại lý
        } else {
            request.setAttribute("errorMessage", "Unable to update dealer information");
            RequestDispatcher dispatcher = request.getRequestDispatcher("EditDealer.jsp?id=" + dealer.getId());
            dispatcher.forward(request, response);
        }
    }
}