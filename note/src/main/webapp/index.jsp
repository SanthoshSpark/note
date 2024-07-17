<!-- notes-app/src/main/webapp/index.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="note.Note" %>
<%@ page import="note.NotesManager" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Notes App</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h1>Notes</h1>
    <form action="addNote.jsp" method="post">
        <button type="submit">Add Note</button>
    </form>
    <ul>
        <%
            List<Note> notes = NotesManager.getNotes();
            for (Note note : notes) {
        %>
            <li>
                <h2><%= note.getTitle() %></h2>
                <p><%= note.getContent() %></p>
                <form action="NoteServlet" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="title" value="<%= note.getTitle() %>">
                    <button type="submit">Delete</button>
                </form>
                <form action="editNote.jsp" method="post" style="display:inline;">
                    <input type="hidden" name="title" value="<%= note.getTitle() %>">
                    <input type="hidden" name="content" value="<%= note.getContent() %>">
                    <button type="submit">Edit</button>
                </form>
            </li>
        <%
            }
        %>
    </ul>
</body>
</html>
