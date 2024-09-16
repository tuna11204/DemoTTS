@WebServlet("/MembershipServlet ")
public class MembershipServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("list".equals(action)) {
            // Logic để lấy danh sách thành viên từ cơ sở dữ liệu
            List<Member> members = getMembersFromDatabase();
            request.setAttribute("members", members);
            RequestDispatcher dispatcher = request.getRequestDispatcher("views/MemberList.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle other actions
        }
    }

    // Phương thức để lấy danh sách thành viên từ cơ sở dữ liệu
    private List<Member> getMembersFromDatabase() {
        // Logic kết nối cơ sở dữ liệu và lấy dữ liệu thành viên
        return new ArrayList<>(); // Thay thế bằng dữ liệu thực tế
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");

            // Logic thêm thành viên vào cơ sở dữ liệu
            addMemberToDatabase(name, email);
            response.sendRedirect("MemberServlet?action=list"); // Chuyển hướng đến danh sách thành viên
        }
    }

    // Phương thức để thêm thành viên vào cơ sở dữ liệu
    private void addMemberToDatabase(String name, String email) {
        // Logic kết nối cơ sở dữ liệu và thêm dữ liệu
    }
}