@WebServlet("/SupplierServlet")
public class SupplierServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Hiển thị danh sách nhà cung cấp
        List<Supplier> supplierList = SupplierDao.getAllSuppliers();
        request.setAttribute("supplierList", supplierList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/Supplier.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            // Logic để thêm nhà cung cấp
            String name = request.getParameter("name");
            String contact = request.getParameter("contact");
            // Thêm các tham số khác

            Supplier newSupplier = new Supplier(name, contact);
            SupplierDao.addSupplier(newSupplier);
            response.sendRedirect("SupplierServlet"); // Chuyển hướng đến danh sách nhà cung cấp
        }
        // Các hành động khác có thể được xử lý ở đây
    }
}