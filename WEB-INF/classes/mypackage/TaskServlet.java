package mypackage;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;

public class TaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String dueDate = request.getParameter("dueDate");

        Task newTask = new Task(title, description, dueDate);

        HttpSession session = request.getSession();
        ArrayList<Task> tasks = (ArrayList<Task>) session.getAttribute("tasks");

        if (tasks == null) {
            tasks = new ArrayList<>();
        }

        tasks.add(newTask);
        session.setAttribute("tasks", tasks);

        response.sendRedirect("tasks");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("task_list.jsp");
        dispatcher.forward(request, response);
    }
}
