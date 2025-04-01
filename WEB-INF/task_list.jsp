<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mypackage.Task" %>
<html>
<head>
    <title>Liste des Tâches</title>
</head>
<body>
    <h1>Mes Tâches</h1>
    <a href="add_task.jsp">Ajouter une nouvelle tâche</a>
    <hr>

    <%
        ArrayList<Task> tasks = (ArrayList<Task>) session.getAttribute("tasks");

        if (tasks != null && !tasks.isEmpty()) {
            for (Task task : tasks) {
    %>
                <div>
                    <strong>Titre :</strong> <%= task.getTitle() %><br>
                    <strong>Description :</strong> <%= task.getDescription() %><br>
                    <strong>Date d’échéance :</strong> <%= task.getDueDate() %><br>
                    <strong>Terminée :</strong> <%= task.isDone() ? "Oui" : "Non" %>
                </div>
                <hr>
    <%
            }
        } else {
    %>
            <p>Aucune tâche enregistrée.</p>
    <%
        }
    %>
</body>
</html>
