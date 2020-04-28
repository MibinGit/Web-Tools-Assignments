/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import org.springframework.web.servlet.mvc.SimpleFormController;

/**
 *
 * @author kirito
 */
public class UserFormController extends SimpleFormController {
    
    public UserFormController() {
        //Initialize controller properties here or 
        //in the Web Application Context

        setCommandClass(User.class);
        setCommandName("user");
        setSuccessView("successView");
        setFormView("user-form");
    }
    
    @Override
    protected void doSubmitAction(Object command) throws Exception {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    //Use onSubmit instead of doSubmitAction 
    //when you need access to the Request, Response, or BindException objects
    
    
    protected ModelAndView onSubmit(
            HttpServletRequest request, 
            HttpServletResponse response, 
            Object command, 
            BindException errors) throws Exception {
        HttpSession session  = request.getSession();
        ModelAndView mv = new ModelAndView(getSuccessView());
        User u = (User) command;
        UserDAO userDAO = (UserDAO) getApplicationContext().getBean("userDao");
        User login = userDAO.authenticateLogin(u.getUsername(), u.getPassword());
        if(login == null)
        {
            mv = new ModelAndView("error");
        }
        
        else
        {
            session.setAttribute("USER", login.getUsername());
            mv = new ModelAndView(getSuccessView());
        }
        return mv;
    }
}
