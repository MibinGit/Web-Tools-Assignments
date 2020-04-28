import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CSVServlet")
public class CSVServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        ArrayList<List<String>> nowlist = new ArrayList<List<String>>();
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

            ArrayList<String> titles = new ArrayList<String>();

            for(int m = 0; m < meta.getColumnCount(); m++)
            {
                titles.add(meta.getColumnName(m + 1));
            }

            nowlist.add(titles);
            while (results.next())
            {
                ArrayList<String> sublist = new ArrayList<String>();

                for (int i = 0; i < meta.getColumnCount(); i++)
                {
                    sublist.add(results.getString(i + 1));
                }
                nowlist.add(sublist);
            }
        }

        catch (Exception e)
        {
            System.out.println(e.getMessage());
        }

        request.setAttribute("list", nowlist);
        request.getRequestDispatcher("CSVDisplay.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.getRequestDispatcher("CSVSearch.jsp").forward(request, response);
    }
}
