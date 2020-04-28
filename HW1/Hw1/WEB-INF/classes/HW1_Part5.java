import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class HW1_Part5 extends HttpServlet
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

        Map<String, String[]> map = request.getParameterMap();
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Personal Information</title>");
        out.println("</head>");
        out.println("<body>");

        out.println("<p>Your Email Address is: " + map.get("email")[0] + "</p>");
        out.println("<p>Your Login Password is: " + map.get("password")[0] + "</p>");
        out.println("<p>Your Repassword is: " + map.get("repassword")[0] + "</p>");
        out.println("<p>Your Picture is: " + map.get("file")[0] + "</p>");
        out.println("<p>Your Gender is: " + map.get("inlineRadioOptions")[0] + "</p>");
        out.println("<p>Your Country is: " + map.get("country")[0] + "</p>");
        out.println("<p>Your Hobbies are: " + "</p>");
        for(int i = 0; i < map.get("hobby").length; i++)
        {
            out.println("<ul>");
            out.println("<li>" + map.get("hobby")[i] + "</li>");
            out.println("</ul>");
        }
        out.println("<p>Your Address is " + map.get("address")[0] + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}