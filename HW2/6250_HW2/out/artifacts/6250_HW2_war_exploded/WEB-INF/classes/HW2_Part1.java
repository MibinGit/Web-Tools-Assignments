import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HW2_Part1 extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String b[] = new String[5];
        for(int i = 0; i < 5; i++)
        {
            b[i] = new String();
        }

        for(int i = 0; i < 5; i++)
        {
            b[i] = (String)session.getAttribute("books" + i);
        }
        
        String c[] = new String[5];
        for(int j = 0; j < 5; j++)
        {
            c[j] = new String();
        }

        for(int j = 0; j < 5; j++)
        {
            c[j] = (String)session.getAttribute("cds" + j);
        }

        String l[] = new String[5];
        for(int m = 0; m < 5; m++)
        {
            l[m] = new String();
        }

        for(int m = 0; m < 5; m++)
        {
            l[m] = (String)session.getAttribute("laptops" + m);
        }

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Shopping Cart</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h2>The following item has been added to your shopping cart successfully</h2>");

        for(int i = 0; i < b.length; i++)
        {
            if(b[i] != null)
            {
                out.println("<p>The book : " + b[i] + " is in your shopping cart</p>");
            }

            else
            {
                break;
            }
        }

        for(int j = 0; j < c.length; j++)
        {
            if(c[j] != null)
            {
                out.println("<p>The cd : " + c[j] + " is in your shopping cart</p>");
            }

            else
            {
                break;
            }
        }

        for(int m = 0; m < l.length; m++)
        {
            if(l[m] != null)
            {
                out.println("<p>The laptop : " + l[m] + " is in your shopping cart</p>");
            }

            else
            {
                break;
            }
        }
        out.println("<a href='Part1.html'>" + " [ Back ] " + "</a>");
        out.println("</body>");
        out.println("</html>");
    }
}