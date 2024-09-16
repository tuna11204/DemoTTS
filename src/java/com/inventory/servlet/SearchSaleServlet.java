@WebServlet("/SearchSaleServlet")
public class SearchSaleServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");

        // Lấy thông tin người dùng dựa trên mã mua hàng
        User user = UserDao.getRecordByPurchaseCode(code);

        // Gửi thông tin người dùng đến JSP
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("sales.jsp");
        dispatcher.forward(request, response);
    }
}