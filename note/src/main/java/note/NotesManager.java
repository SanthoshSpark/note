package note;

//notes-app/src/main/webapp/NotesManager.java
import java.util.ArrayList;
import java.util.List;

public class NotesManager {
 private static List<Note> notes = new ArrayList<>();

 public static List<Note> getNotes() {
     return notes;
 }

 public static void addNote(Note note) {
     notes.add(note);
 }

 public static void deleteNoteByTitle(String title) {
     notes.removeIf(note -> note.getTitle().equals(title));
 }

 public static Note getNoteByTitle(String title) {
     for (Note note : notes) {
         if (note.getTitle().equals(title)) {
             return note;
         }
     }
     return null;
 }

 public static void updateNoteByTitle(String oldTitle, Note updatedNote) {
     for (int i = 0; i < notes.size(); i++) {
         if (notes.get(i).getTitle().equals(oldTitle)) {
             notes.set(i, updatedNote);
             break;
         }
     }
 }
}
