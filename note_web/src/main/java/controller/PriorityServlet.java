package controller;

import model.NoteTypes;
import model.Priority;
import service.INoteTypeSevice;
import service.IPriorityService;
import service.NoteTypeService;
import service.PriorityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "PriorityServlet", value = "/PriorityServlet")
public class PriorityServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private IPriorityService priorityService;

    public void init() {
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
                    insertPriority(req, resp);
                    break;
                case "edit":
                    updatePriority(req, resp);
                    break;
                case "delete" :
                    deletePriority(req,resp);
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
                    listPriority(req, resp);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listPriority(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        List<Priority> listPriority = priorityService.selectAllPriority();
        req.setAttribute("listPriority", listPriority);
        RequestDispatcher dispatcher = req.getRequestDispatcher("priority/list.jsp");
        dispatcher.forward(req, resp);
    }

    public void formDeleteTypes(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("priority",priorityService.selectPriority(id));
        RequestDispatcher dis = request.getRequestDispatcher("priority/delete.jsp");
        dis.forward(request,response);
    }

    private void deletePriority(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        int id =Integer.parseInt(req.getParameter("id"));
        priorityService.deletePriority(id);
        boolean isDeposit = priorityService.deletePriority(id);

        if (isDeposit) {
            req.setAttribute("success","Successful delete");
            req.setAttribute("error",null);
        } else {
            req.setAttribute("success",null);
            req.setAttribute("error","Error delete");
        }
        resp.sendRedirect("/priority");
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(req.getParameter("id"));
        Priority existingPriority = priorityService.selectPriority(id);
        if (existingPriority != null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("priority/edit.jsp");
            req.setAttribute("priority", existingPriority);
            dispatcher.forward(req, resp);

        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("noteType/404.jsp");
            dispatcher.forward(req, resp);
        }

    }

    private void showNewForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        RequestDispatcher dispatcher = req.getRequestDispatcher("priority/create.jsp");
        dispatcher.forward(req, resp);
    }


    private void insertPriority(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        String name = req.getParameter("priority_name");

        if(name.equals("")){
            RequestDispatcher dispatcher = req.getRequestDispatcher("priority/create.jsp");
            req.setAttribute("error","Invalid Value");
            req.setAttribute("success",null);
            dispatcher.forward(req,resp);

        }else{
            Priority newPriority = new Priority();
            newPriority.setPriorityName(name);
            priorityService.insertPriority(newPriority);
            req.setAttribute("error",null);
            req.setAttribute("success","Create Note Type successfully");
            showNewForm(req, resp);
        }
    }

    private void updatePriority(HttpServletRequest req, HttpServletResponse resp)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("priority_name");
        Priority priority = new Priority(id, name);
        boolean isDeposit = priorityService.updatePriority(priority);

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
