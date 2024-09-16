@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userid") == null) {
            response.sendRedirect("index.jsp");
        } else {
            request.getRequestDispatcher("main.jsp").forward(request, response);
        }
    }
}