@WebServlet("/SalesViewServlet")
public class SalesViewServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("list".equals(action)) {
            // Logic để lấy danh sách bán hàng từ cơ sở dữ liệu
            List<Sale> sales = getSalesFromDatabase();
            request.setAttribute("sales", sales);
            RequestDispatcher dispatcher = request.getRequestDispatcher("views/sales.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle other actions
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String productId = request.getParameter("productId");
            String quantity = request.getParameter("quantity");

            // Logic thêm bán hàng vào cơ sở dữ liệu
            addSaleToDatabase(productId, quantity);
            response.sendRedirect("SalesServlet?action=list"); // Chuyển hướng đến danh sách bán hàng
        }
    }

    private List<Sale> getSalesFromDatabase() {
        // Logic kết nối cơ sở dữ liệu và lấy dữ liệu bán hàng
        return new ArrayList<>(); // Thay thế bằng dữ liệu thực tế
    }

    private void addSaleToDatabase(String productId, String quantity) {
        // Logic kết nối cơ sở dữ liệu và thêm dữ liệu
    }
}