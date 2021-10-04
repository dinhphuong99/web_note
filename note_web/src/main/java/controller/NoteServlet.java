package controller;

import model.NoteTypes;
import model.Notes;
import model.Priority;
import service.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "NoteServlet", urlPatterns = "/notes")
public class NoteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private INoteService noteService;
    private INoteTypeSevice noteTypeSevice;
    private IPriorityService priorityService;

    public void init() {
        noteService = new NoteService();
        noteTypeSevice = new NoteTypeService();
        priorityService = new PriorityService();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertNote(req, resp);
                    break;
                case "edit":
                    updateNote(req, resp);
                    break;
                case "delete" :
                    deleteNote(req,resp);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }



    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(req, resp);
                    break;
                case "edit":
                    showEditForm(req, resp);
                    break;
                case "delete":
                    formDeleteNotes(resp, req);
                    break;
                default:
                    listNote(req, resp);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listNote(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        List<Notes> listNote = noteService.selectAllNotes();
        req.setAttribute("listNote", listNote);
        RequestDispatcher dispatcher = req.getRequestDispatcher("note/list.jsp");
        dispatcher.forward(req, resp);
    }

    public void formDeleteNotes(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("note",noteService.selectNote(id));
        RequestDispatcher dis = request.getRequestDispatcher("note/delete.jsp");
        dis.forward(request,response);
    }

    private void deleteNote(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        int id =Integer.parseInt(req.getParameter("id"));
        noteService.deleteNote(id);
        boolean isDeposit = noteService.deleteNote(id);

        if (isDeposit) {
            req.setAttribute("success","Successful delete");
            req.setAttribute("error",null);
        } else {
            req.setAttribute("success",null);
            req.setAttribute("error","Error delete");
        }
        resp.sendRedirect("/notes");
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(req.getParameter("id"));
        Notes existingCustomer = noteService.selectNote(id);
        List<NoteTypes> noteTypesList = noteTypeSevice.selectAllNoteTypes();
        req.setAttribute("noteTypesList", noteTypesList);

        List<Priority> notePriority = priorityService.selectAllPriority();
        req.setAttribute("priorityList", notePriority);

        if (existingCustomer != null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("note/edit.jsp");
            req.setAttribute("note", existingCustomer);
            dispatcher.forward(req, resp);

        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("note/404.jsp");
            dispatcher.forward(req, resp);
        }

    }

    private void showNewForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        RequestDispatcher dispatcher = req.getRequestDispatcher("note/create.jsp");
        List<NoteTypes> noteTypesList = noteTypeSevice.selectAllNoteTypes();
        req.setAttribute("noteTypesList", noteTypesList);

        List<Priority> notePriority = priorityService.selectAllPriority();
        req.setAttribute("priorityList", notePriority);
        dispatcher.forward(req, resp);
    }


    private void insertNote(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        String name = req.getParameter("note_name");
        String startTime = req.getParameter("start_time");
        String endTime = req.getParameter("end_time");
        String description = req.getParameter("description");
        int typeId = Integer.parseInt(req.getParameter("type_id"));
        int priorityId = Integer.parseInt(req.getParameter("priority_id"));
        List<NoteTypes> noteTypesList = noteTypeSevice.selectAllNoteTypes();
        req.setAttribute("noteTypesList", noteTypesList);

        List<Priority> notePriority = priorityService.selectAllPriority();
        req.setAttribute("priorityList", notePriority);

        if(name.equals("") || startTime.equals("") || endTime.equals("") || description.equals("") || String.valueOf(typeId).equals("")||String.valueOf(priorityId).equals("")){
            RequestDispatcher dispatcher = req.getRequestDispatcher("note/create.jsp");
            req.setAttribute("error","Invalid Value");
            req.setAttribute("success",null);
            dispatcher.forward(req,resp);

        }else{
            Notes newNote = new Notes();
            newNote.setNoteName(name);
            newNote.setStartTime(startTime);
            newNote.setEndTime(endTime);
            newNote.setDescription(description);
            newNote.setTypeId(typeId);
            newNote.setPriorityId(priorityId);

            noteService.insertNote(newNote);
            req.setAttribute("error",null);
            req.setAttribute("success","Create Note successfully");
            showNewForm(req, resp);
        }
    }

    private void updateNote(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("note_name");
        String startTime = req.getParameter("start_time");
        String endTime = req.getParameter("end_Time");
        String description = req.getParameter("description");
        int typeId = Integer.parseInt(req.getParameter("type_id"));
        int priorityId = Integer.parseInt(req.getParameter("priority_id"));
        Notes note = new Notes(id, name, startTime, endTime, description,typeId,priorityId);
        List<NoteTypes> noteTypesList = noteTypeSevice.selectAllNoteTypes();
        req.setAttribute("noteTypesList", noteTypesList);

        List<Priority> notePriority = priorityService.selectAllPriority();
        req.setAttribute("notePriority", notePriority);

        boolean isDeposit = noteService.updateNote(note);

        if (isDeposit) {
            req.setAttribute("success","Successful");
            req.setAttribute("error",null);
        } else {
            req.setAttribute("success",null);
            req.setAttribute("error","Error");
        }
        showEditForm(req, resp);
    }
}
