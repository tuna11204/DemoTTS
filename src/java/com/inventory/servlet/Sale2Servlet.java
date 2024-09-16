@WebServlet("/Sale2Servlet")
public class Sale2Servlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SaleRecord> list = UserDao.getAllSaleRecords();
        request.setAttribute("list", list);
        request.getRequestDispatcher("sale2.jsp").forward(request, response);
    }
}