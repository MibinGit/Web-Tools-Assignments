import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HW2_Part1_Laptop extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String laptops[] = request.getParameterValues("laptop");
        String temp[] = new String[5];
        for(int i = 0; i < laptops.length; i++)
        {
            temp[i] = new String();
        }

        for(int i = 0; i < laptops.length; i++)
        {
            temp[i] = laptops[i];
            session.setAttribute("laptops" + i, temp[i]);
        }

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Shopping Cart</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h2>The following laptops has been added to your shopping cart successfully</h2>");

        for(String LAPTOP : laptops)
        {
            out.println("<p>Laptop - " + LAPTOP + " has been saved to cart</p>");
        };

        out.println("<form action=\"HW2_Part1\" method=\"POST\">");
        out.println("<button type=\"submit\">" + " [ View Cart ] " + "</button>");
        out.println("</form>");
        out.println("<a href='Part1.html'>" + " [ Back ] " + "</a>");
        out.println("</body>");
        out.println("</html>");
    }
}