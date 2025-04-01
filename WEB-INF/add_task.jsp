<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter une tâche</title>
</head>
<body>
    <h1>Ajouter une tâche</h1>
    <form action="tasks" method="post">
        Titre : <input type="text" name="title" required><br>
        Description : <input type="text" name="description" required><br>
        Date d’échéance : <input type="date" name="dueDate" required><br>
        <input type="submit" value="Ajouter la tâche">
    </form>
    <a href="tasks">Voir mes tâches</a>
</body>
</html>
