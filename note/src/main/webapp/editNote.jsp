<!-- notes-app/src/main/webapp/editNote.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Note</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h1>Edit Note</h1>
    <form action="NoteServlet" method="post">
        <input type="hidden" name="action" value="edit">
        <input type="hidden" name="oldTitle" value="<%= request.getParameter("title") %>">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<%= request.getParameter("title") %>" required>
        <br>
        <label for="content">Content:</label>
        <textarea id="content" name="content" required><%= request.getParameter("content") %></textarea>
        <br>
        <button type="submit">Update Note</button>
    </form>
    <a href="index.jsp">Back to Notes</a>
</body>
</html>
