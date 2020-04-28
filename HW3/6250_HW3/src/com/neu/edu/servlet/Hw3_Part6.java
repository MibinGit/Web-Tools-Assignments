package com.neu.edu.servlet;

import com.neu.edu.pojo.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Hw3_Part6")
public class Hw3_Part6 extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        List<String> titles = new ArrayList<String>();
        List<List<String>> contents = new ArrayList<List<String>>();
        String FileName = request.getParameter("inputName");

        try
        {
            Class.forName("org.relique.jdbc.csv.CsvDriver");
            String now_dir = Thread.currentThread().getContextClassLoader().getResource("").getPath()+"../csvs";
            Connection conn = DriverManager.getConnection("jdbc:relique:csv:" + now_dir );
            Statement stmt = conn.createStatement();
            String SQL_QUERY = "SELECT *  FROM " + FileName;
            ResultSet results = stmt.executeQuery(SQL_QUERY);

            ResultSetMetaData meta = results.getMetaData();

            for(int m = 0; m < meta.getColumnCount(); m ++)
            {
                titles.add(meta.getColumnName(m + 1));
            }

            while (results.next())
            {
                ArrayList<String> newcontent = new ArrayList<String>();

                for (int i = 0; i < meta.getColumnCount(); i++)
                {
                    newcontent.add(results.getString(i + 1));
                }
                contents.add(newcontent);
            }
        }

        catch (Exception e)
        {
            System.out.println(e.getMessage());
        }

        CSV csv = new CSV();
        csv.setContents(contents);
        csv.setTitle(titles);

        request.setAttribute("csvcontents", csv);
        request.getRequestDispatcher("/JSP/Hw3_Part6_Display.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.getRequestDispatcher("/JSP/Hw3_Part6_Search.jsp").forward(request, response);
    }
}
