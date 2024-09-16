@WebServlet("/DeleteDealerServlet")
public class DeleteDealerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy ID đại lý từ request
        int dealerId = Integer.parseInt(request.getParameter("id"));

        // Gọi phương thức xóa từ UserDao
        boolean result = UserDao.deletedealer(dealerId);

        // Chuyển hướng đến trang danh sách đại lý
        if (result) {
            response.sendRedirect("../Dealership.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to delete dealer");
            RequestDispatcher dispatcher = request.getRequestDispatcher("../Dealership.jsp");
            dispatcher.forward(request, response);
        }
    }
}