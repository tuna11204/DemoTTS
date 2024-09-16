@WebServlet("/DealershipServlet")
public class DealershipServlet extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession session = request.getSession(false);
if (session == null || session.getAttribute("userid") == null) {
response.sendRedirect("index.jsp");
return;
}

// Kết nối cơ sở dữ liệu
try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "12345678");
PreparedStatement psPagination = conn.prepareStatement("SELECT SQL_CALC_FOUND_ROWS * FROM dealership LIMIT ?, ?");
PreparedStatement psRowCnt = conn.prepareStatement("SELECT FOUND_ROWS() as cnt")) {

int iShowRows = 5;  // Số bản ghi hiển thị trên mỗi trang
int iPageNo = Integer.parseInt(request.getParameter("iPageNo", "1"));
int iStart = (iPageNo - 1) * iShowRows;

psPagination.setInt(1, iStart);
psPagination.setInt(2, iShowRows);
ResultSet rsPagination = psPagination.executeQuery();

// Lấy tổng số bản ghi
ResultSet rsRowCnt = psRowCnt.executeQuery();
int iTotalRows = 0;
if (rsRowCnt.next()) {
iTotalRows = rsRowCnt.getInt("cnt");
}

request.setAttribute("dealerships", rsPagination);
request.setAttribute("totalRows", iTotalRows);
request.setAttribute("currentPage", iPageNo);
request.getRequestDispatcher("Dealership.jsp").forward(request, response);
} catch (