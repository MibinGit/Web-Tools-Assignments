import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;


public class HW1_Part4 extends HttpServlet
{            
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Enumeration elements = request.getParameterNames();
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Personal Information</title>");
        out.println("</head>");
        out.println("<body>");
        while(elements.hasMoreElements())
        {
            String name = (String)elements.nextElement();
            String value[] = request.getParameterValues(name);
            for(String values: value)
            {
                out.print("<p>Your " + name + " is: " + values + "</p>");
            }
        }
        out.println("</body>");
        out.println("</html>");
    }
}