package com.neu.edu.servlet;

import com.neu.edu.pojo.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

@WebServlet(name = "RemoveCartController")
public class Hw3_Part5_Delete extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession(true);
        Cart cart = new Cart();
        ArrayList<String> booklist = (ArrayList<String>) session.getAttribute("book");
        ArrayList<String> cdlist = (ArrayList<String>) session.getAttribute("cd");
        ArrayList<String> laptoplist = (ArrayList<String>) session.getAttribute("laptop");
        try
        {
            String name = request.getParameter("Delete");
            String kind = request.getParameter("kind");

            if(kind.equals("book"))
            {
                booklist.remove(name);
            }

            else if(kind.equals("cd"))
            {
                cdlist.remove(name);
            }

            else
            {
                laptoplist.remove(name);
            }

            session.setAttribute("book", booklist);
            session.setAttribute("cd", cdlist);
            session.setAttribute("laptop", laptoplist);
            session.removeAttribute(name);
            request.getRequestDispatcher("/JSP/Hw3_Part5_Cart.jsp").forward(request, response);
        }

        catch (Exception e)
        {
            System.out.println(e.getMessage());
            request.getRequestDispatcher("/JSP/Hw3_Part5_Cart.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
