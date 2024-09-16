@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Hiển thị danh sách nhân viên
        List<Staff> staffList = StaffDao.getAllStaff();
        request.setAttribute("staffList", staffList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/Staff.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            // Logic để thêm nhân viên
            String name = request.getParameter("name");
            String position = request.getParameter("position");
            // Thêm các tham số khác

            Staff newStaff = new Staff(name, position);
            StaffDao.addStaff(newStaff);
            response.sendRedirect("StaffServlet"); // Chuyển hướng đến danh sách nhân viên
        }
        // Các hành động khác có thể được xử lý ở đây
    }
}