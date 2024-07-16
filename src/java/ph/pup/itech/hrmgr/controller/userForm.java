package ph.pup.itech.hrmgr.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.hrmgr.dao.UserAdd;
import ph.pup.itech.hrmgr.model.userModel;


public class userForm extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    
    private void viewUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserAdd users = new UserAdd();
        ArrayList<userModel> userList = users.getUserList();
        request.setAttribute("userList", userList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/usermanPage.jsp");
        rd.forward(request, response);
    }
    
    private void showUserCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/userForm.jsp");
        rd.forward(request, response);
    }
    private void createUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int userId = Integer.parseInt(request.getParameter("userId"));
        String passWord = request.getParameter("passWord");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String completeAddress = request.getParameter("completeAddress");
        String birthday = request.getParameter("birthday");
        String cellNumber =request.getParameter("cellNumber");
        String userRole = request.getParameter("userRole");
        
          UserAdd users = new UserAdd();
        userModel createUser = new userModel(userId, passWord, firstName, middleName, lastName,
                completeAddress, birthday, cellNumber, userRole);
        
        boolean success = users.createUser(createUser);
        if (success) {
            request.setAttribute("message", "User added successfully!");
            request.setAttribute("alertType", "success");
        } else {
            request.setAttribute("message", "Failed to add user!");
            request.setAttribute("alertType", "error");
        }
        
        response.sendRedirect(request.getContextPath() + "/user");
    }    
    
        private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserAdd users = new UserAdd();
        userModel userDetails = users.getUserDetails(userId);
        request.setAttribute("userDetails", userDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/userEdit.jsp");
        rd.forward(request, response);
    }
            private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        String passWord = request.getParameter("passWord");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String completeAddress = request.getParameter("completeAddress");
        String birthday = request.getParameter("birthday");
        String cellNumber =request.getParameter("cellNumber");
        String userRole = request.getParameter("userRole");
                UserAdd users = new UserAdd();
        userModel updateUser = new userModel(userId, passWord, firstName, middleName, lastName,
                completeAddress, birthday, cellNumber, userRole);
        
        boolean success = users.updateUser(updateUser);
        if (success) {
            request.setAttribute("message", "User updated successfully!");
            request.setAttribute("alertType", "success");
        } else {
            request.setAttribute("message", "Failed to update user!");
            request.setAttribute("alertType", "error");
        }
        
        response.sendRedirect(request.getContextPath() + "/user");
    }
            private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserAdd user = new UserAdd();
        boolean success = user.deleteUser(userId);
        if (success) {
            request.setAttribute("message", "User deleted successfully!");
            request.setAttribute("alertType", "success");
        } else {
            request.setAttribute("message", "Failed to delete user!");
            request.setAttribute("alertType", "error");
        }
        response.sendRedirect(request.getContextPath() + "/user");
    }
}
