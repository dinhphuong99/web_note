package controller;

import model.NoteTypes;
import service.INoteTypeSevice;
import service.NoteTypeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "NoteTypeServlet", value = "/noteTypes")
public class NoteTypeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private INoteTypeSevice noteTypeService;

    public void init() {
        noteTypeService = new NoteTypeService();
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
                    insertNoteType(req, resp);
                    break;
                case "edit":
                    updateNoteType(req, resp);
                    break;
                case "delete" :
                    deleteNoteType(req,resp);
                    break;
                default:
                    listNoteTypes(req, resp);
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
                    formDeleteTypes(resp, req);
                    break;
                default:
                    listNoteTypes(req, resp);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listNoteTypes(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        List<NoteTypes> listNoteType = noteTypeService.selectAllNoteTypes();
        req.setAttribute("listNoteType", listNoteType);
        RequestDispatcher dispatcher = req.getRequestDispatcher("noteType/list.jsp");
        dispatcher.forward(req, resp);
    }

    public void formDeleteTypes(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("noteType",noteTypeService.selectNoteType(id));
        RequestDispatcher dis = request.getRequestDispatcher("noteType/delete.jsp");
        dis.forward(request,response);
    }

    private void deleteNoteType(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        int id =Integer.parseInt(req.getParameter("id"));
        boolean isDeposit = noteTypeService.deleteNoteTypes(id);

        if (isDeposit) {
            req.setAttribute("success","Successful delete");
            req.setAttribute("error",null);
        } else {
            req.setAttribute("success",null);
            req.setAttribute("error","Error delete");
        }
        resp.sendRedirect("/noteTypes");
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(req.getParameter("id"));
        NoteTypes existingNotesTypes = noteTypeService.selectNoteType(id);
        if (existingNotesTypes != null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("noteType/edit.jsp");
            req.setAttribute("noteTypes", existingNotesTypes);
            dispatcher.forward(req, resp);

        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("noteType/404.jsp");
            dispatcher.forward(req, resp);
        }

    }

    private void showNewForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        RequestDispatcher dispatcher = req.getRequestDispatcher("noteType/create.jsp");
        dispatcher.forward(req, resp);
    }


    private void insertNoteType(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        String name = req.getParameter("name");

        if(name.equals("")){
            RequestDispatcher dispatcher = req.getRequestDispatcher("noteType/create.jsp");
            req.setAttribute("error","Invalid Value");
            req.setAttribute("success",null);
            dispatcher.forward(req,resp);

        }else{
            NoteTypes newNoteType = new NoteTypes();
            newNoteType.setName(name);
            noteTypeService.insertNoteType(newNoteType);
            req.setAttribute("error",null);
            req.setAttribute("success","Create Note Type successfully");
            showNewForm(req, resp);
        }
    }

    private void updateNoteType(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("note_name");
        NoteTypes note = new NoteTypes(id, name);
        boolean isDeposit = noteTypeService.updateNoteTypes(note);

        if (isDeposit) {
            req.setAttribute("success","Successful edit");
            req.setAttribute("error",null);
        } else {
            req.setAttribute("success",null);
            req.setAttribute("error","Error edit");
        }
        showEditForm(req, resp);
    }
}
