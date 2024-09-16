@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("list".equals(action)) {
            // Logic để lấy danh sách sản phẩm từ cơ sở dữ liệu
            List<Product> products = getProductsFromDatabase();
            request.setAttribute("products", products);
            RequestDispatcher dispatcher = request.getRequestDispatcher("views/DB/ProductList.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle other actions
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String name = request.getParameter("name");
            String price = request.getParameter("price");

            // Logic thêm sản phẩm vào cơ sở dữ liệu
            addProductToDatabase(name, price);
            response.sendRedirect("ProductServlet?action=list"); // Chuyển hướng đến danh sách sản phẩm
        }
    }

    // Phương thức lấy danh sách sản phẩm từ cơ sở dữ liệu
    private List<Product> getProductsFromDatabase() {
        // Logic kết nối cơ sở dữ liệu và lấy dữ liệu sản phẩm
        return new ArrayList<>(); // Thay thế bằng dữ liệu thực tế
    }

    // Phương thức thêm sản phẩm vào cơ sở dữ liệu
    private void addProductToDatabase(String name, String price) {
        // Logic kết nối cơ sở dữ liệu và thêm dữ liệu
    }
}