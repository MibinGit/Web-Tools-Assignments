package Controller;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

import java.sql.*;

public class CsvDisplayController extends SimpleTagSupport
{
    private String filename;
    public void setFilename(String filename)
    {
        this.filename = filename;
    }

    public void doTag() throws JspException, IOException
    {
        JspWriter out = getJspContext().getOut();
        try
        {
            Class.forName("org.relique.jdbc.csv.CsvDriver");
            String now_dir = Thread.currentThread().getContextClassLoader().getResource("").getPath()+"../csvs";
            System.out.println(now_dir);
            Connection conn = DriverManager.getConnection("jdbc:relique:csv:" + now_dir);
            Statement stmt = conn.createStatement();
            System.out.println("file" + this.filename);
            String SQL_QUERY = "SELECT *  FROM " + this.filename;
            ResultSet results = stmt.executeQuery(SQL_QUERY);
            ResultSetMetaData meta = results.getMetaData();

            out.print("<tr>");
            for(int m = 0; m < meta.getColumnCount(); m ++)
            {
                out.println("<th>" + meta.getColumnName(m + 1) + "</th>");
            }
            out.println("</tr>");

            while (results.next())
            {
                out.println("<tr>");
                for (int i = 0; i < meta.getColumnCount(); i++)
                {
                    out.println("<td>" + results.getString(i +1) + "</td>");
                }
                out.println("</tr>");
            }
        }

        catch (Exception e)
        {
            System.out.println("error" + e.getMessage());
            out.println("error");
        }
    }
}
