<!-- notes-app/src/main/webapp/addNote.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Note</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h1>Add Note</h1>
    <form action="NoteServlet" method="post">
        <input type="hidden" name="action" value="add">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required>
        <br>
        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea>
        <br>
        <button type="submit">Add Note</button>
    </form>
    <a href="index.jsp">Back to Notes</a>
</body>
</html>
