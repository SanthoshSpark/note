package note;

//notes-app/src/main/webapp/NoteServlet.java
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class NoteServlet extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String action = request.getParameter("action");

     if ("add".equals(action)) {
         String title = request.getParameter("title");
         String content = request.getParameter("content");

         if (title != null && !title.isEmpty() && content != null && !content.isEmpty()) {
             NotesManager.addNote(new Note(title, content));
         }
     } else if ("delete".equals(action)) {
         String title = request.getParameter("title");
         NotesManager.deleteNoteByTitle(title);
     } else if ("edit".equals(action)) {
         String oldTitle = request.getParameter("oldTitle");
         String title = request.getParameter("title");
         String content = request.getParameter("content");

         if (title != null && !title.isEmpty() && content != null && !content.isEmpty()) {
             NotesManager.updateNoteByTitle(oldTitle, new Note(title, content));
         }
     }

     response.sendRedirect("index.jsp");
 }

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doPost(request, response);
 }
}
