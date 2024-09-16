@WebServlet("/SaleSearchServlet")
public class SaleSearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchValue = request.getParameter("val");
        List<Product> products = new ArrayList<>();

        if (searchValue != null && !searchValue.trim().isEmpty()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "12345678")) {
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM purchase WHERE code = ?");
                    ps.setString(1, searchValue);
                    ResultSet rs = ps.executeQuery();

                    while (rs.next()) {
                        Product product = new Product();
                        product.setCode(rs.getString(2));
                        product.setCategory(rs.getString(4));
                        product.setProductName(rs.getString(5));
                        product.setUnit(rs.getString(8));
                        product.setPerUnitPrice(rs.getString(9));
                        products.add(product);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("products", products);
        request.setAttribute("searchValue", searchValue);
        request.getRequestDispatcher("SaleSearch.jsp").forward(request, response);
    }
}