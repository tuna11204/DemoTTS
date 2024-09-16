@WebServlet("/SalesServlet")
public class SalesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("searchProduct".equals(action)) {
            String productCode = request.getParameter("productCode");
            // Thực hiện tìm kiếm sản phẩm (kết nối cơ sở dữ liệu, lấy thông tin...)
            // Gửi kết quả về lại JSP
            request.setAttribute("result", productList); // Giả sử productList là danh sách sản phẩm
            RequestDispatcher dispatcher = request.getRequestDispatcher("sales.jsp");
            dispatcher.forward(request, response);
        }

        // Các hành động khác như thêm, xóa bán hàng...
    }
}