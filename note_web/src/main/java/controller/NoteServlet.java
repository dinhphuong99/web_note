package controller;

import service.INoteService;
import service.NoteService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "NoteServlet", value = "/notes")
public class NoteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private INoteService noteService;

    public void init() {
        noteService = new NoteService();
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
                    insertCustomers(req, resp);
                    break;
                case "edit":
                    updateCustomers(req, resp);
                    break;
                case "delete" :
                    deleteCustomers(req,resp);
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
                    formdeleteCustomers(resp, req);
                    break;
                default:
                    listCustomer(req, resp);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listNote(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        List<Customer> listCustomer = customerService.selectAllCustomers();
        req.setAttribute("listCustomer", listCustomer);
        RequestDispatcher dispatcher = req.getRequestDispatcher("customer/list.jsp");
        dispatcher.forward(req, resp);
    }

    public void formdeleteCustomers(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("customer",customerService.selectCustomer(id));
        RequestDispatcher dis = request.getRequestDispatcher("customer/delete.jsp");
        dis.forward(request,response);
    }

    private void deleteCustomers(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        int id =Integer.parseInt(req.getParameter("id"));

        customerService.deleteCustomer(id);
        resp.sendRedirect("/customers");

    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(req.getParameter("id"));
        Customer existingCustomer = customerService.selectCustomer(id);
        if (existingCustomer != null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("customer/edit.jsp");
            req.setAttribute("customer", existingCustomer);
            dispatcher.forward(req, resp);

        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("customer/404.jsp");
            dispatcher.forward(req, resp);
        }

    }

    private void showNewForm(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException{
        RequestDispatcher dispatcher = req.getRequestDispatcher("customer/create.jsp");
        dispatcher.forward(req, resp);
    }


    private void insertCustomers(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        if(name == "" || email == "" || phone == "" || address == ""){
            RequestDispatcher dispatcher = req.getRequestDispatcher("customer/create.jsp");
            req.setAttribute("error","Invalid Value");
            req.setAttribute("success",null);
            dispatcher.forward(req,resp);

        }else{
            Customer newCustomer = new Customer(name, email, phone, address);
            customerService.insertCustomer(newCustomer);
            req.setAttribute("error",null);
            req.setAttribute("success","Create Customer successfully");
            showNewForm(req, resp);
        }

    }

    private void updateCustomers(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        Customer customer = new Customer(id, name, email, phone, address);
        customer.setBalance(new Double(0));
        customerService.updateCustomer(customer);

        showEditForm(req, resp);
    }


}
