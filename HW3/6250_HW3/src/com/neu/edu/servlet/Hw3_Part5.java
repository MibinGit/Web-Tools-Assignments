package com.neu.edu.servlet;

import com.neu.edu.pojo.Cart;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "Hw3_Part5")
public class Hw3_Part5 extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession(true);
        String option;
        Cart cart = new Cart();
        ArrayList<String> booklist = session.getAttribute("book") == null? new ArrayList<String>() :(ArrayList<String>) session.getAttribute("book");
        ArrayList<String> cdlist = session.getAttribute("cd") == null? new ArrayList<String>() :(ArrayList<String>) session.getAttribute("cd");
        ArrayList<String> laptoplist = session.getAttribute("laptop") == null? new ArrayList<String>() :(ArrayList<String>) session.getAttribute("laptop");

        try
        {
            option = request.getParameter("option");
        }

        catch (Exception e)
        {
            option = null;
        }

        Enumeration<String> names = session.getAttributeNames();
        String kind = request.getParameter("kind");
        Enumeration ParamterNames = request.getParameterNames();

        while (ParamterNames.hasMoreElements())
        {
            String paramName = (String) ParamterNames.nextElement();
            if (!paramName.equals("kind") && !paramName.equals("UTF-8"))
            {
                String paramValue = request.getParameter(paramName);
                session.setAttribute(paramName, paramValue);
                if (kind.equals("book"))
                {
                    booklist.add(paramValue);
                }

                else if (kind.equals("cd"))
                {
                    cdlist.add(paramValue);
                }

                else
                {
                    laptoplist.add(paramValue);
                }
            }
        }

        session.setAttribute("book", booklist);
        session.setAttribute("cd", cdlist);
        session.setAttribute("laptop", laptoplist);
        request.getRequestDispatcher("/JSP/Hw3_Part5_Cart.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            String kind = request.getParameter("kind");
            if(kind.equals("cart"))
            {
                request.getRequestDispatcher("/JSP/Hw3_Part5_Cart.jsp").forward(request, response);
            }

            else
            {
                request.getRequestDispatcher("/JSP/Hw3_Part5.jsp").forward(request, response);
            }
        }

        catch (Exception e)
        {
            request.getRequestDispatcher("/JSP/Hw3_Part5_Cart.jsp").forward(request, response);
        }
    }
}
