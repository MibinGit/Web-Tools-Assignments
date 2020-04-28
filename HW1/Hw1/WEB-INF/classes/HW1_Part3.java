import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class HW1_Part3 extends HttpServlet
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

        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        String Repassword = request.getParameter("repassword");
        String File = request.getParameter("file");
        String Gender = request.getParameter("inlineRadioOptions");
        String Country = request.getParameter("country");
        String[] Hobby = request.getParameterValues("hobby");
        String Address = request.getParameter("address");
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Personal Information</title>");
        out.println("</head>");
        out.println("<body>");

        out.println("<p>Your Email Address is: " + Email + "</p>");
        out.println("<p>Your Login Password is: " + Password + "</p>");
        out.println("<p>Your Repassword is: " + Repassword + "</p>");
        out.println("<p>Your Picture is: " + File + "</p>");
        out.println("<p>Your Gender is: " + Gender + "</p>");
        out.println("<p>Your Country is: " + Country + "</p>");
        out.println("<p>Your Hobbies are: " + "</p>");
        out.println("<ul>");
        for(String h: Hobby)
        {
            out.println("<li>" + h + "</li>");
        }
        out.println("</ul>");
        out.println("<p>Your Address is " + Address + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}