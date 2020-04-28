package com.neu.edu.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.neu.edu.dao.MovieDao;
import com.neu.edu.pojo.Movie;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;

@WebServlet(name = "Hw3_Part7")
public class Hw3_Part7 extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String option = request.getParameter("option");
        RequestDispatcher requestDispatcher = null;
        if (option.equals("browse"))
        {
            MovieDao md = new MovieDao();
            List<Movie> movies = md.getMovies();
            request.setAttribute("movies", movies);
            requestDispatcher = request.getRequestDispatcher("/JSP/Hw3_Part7_SearchMovie.jsp");
            requestDispatcher.forward(request, response);
        }

        else if (option.equals("add"))
        {
            requestDispatcher = request.getRequestDispatcher("/JSP/Hw3_Part7_AddMovie.jsp");
            requestDispatcher.forward(request, response);
        }

        else if (option.equals("insert"))
        {
            String title = request.getParameter("title");
            String actor = request.getParameter("actor");
            String actress = request.getParameter("actress");
            String genre = request.getParameter("genre");
            int year = Integer.parseInt(request.getParameter("year"));

            MovieDao md = new MovieDao();
            int result = md.addMovies(title, actor, actress, genre, year);

            if (result == 1)
            {
                request.setAttribute("status", "Add Movie Successfully");
                requestDispatcher = request.getRequestDispatcher("/JSP/Hw3_Part7_AddMovie.jsp");
                requestDispatcher.forward(request, response);
            }

            else
            {
                request.setAttribute("status", "Error");
                requestDispatcher = request.getRequestDispatcher("/JSP/Hw3_Part7_AddMovie.jsp");
                requestDispatcher.forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        System.out.println(type + " : "+ keyword);
        try
        {
            MovieDao dbsOps = MovieDao.getInstance();
            List<Movie> result = dbsOps.SearchOps(type, keyword);
            request.setAttribute("list", result);
            System.out.println("Search Database Successfully! ");
        }

        catch (Exception e)
        {
            System.out.println("Search Database Fails! " + e.getMessage());
        }
        request.getRequestDispatcher("/JSP/Hw3_Part7_DisplayMovie.jsp").forward(request, response);
    }
}
