import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

public class HW2_Part1 extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session  = request.getSession(true);

        Enumeration<String> name = session.getAttributeNames();
        while(name.hasMoreElements())
        {
            String nowname1 = name.nextElement();
            String paramValue1 = (String) session.getAttribute(nowname1);
            out.println("<p>" + paramValue1 + " </p>");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        HttpSession session  = request.getSession(true);
        request.setCharacterEncoding("UTF-8");
        String kind = request.getParameter("kind");

        Enumeration<String> names = session.getAttributeNames();
        while(names.hasMoreElements())
        {
            String nowname = names.nextElement();
            if(nowname.contains(kind))
            {
                session.removeAttribute(nowname);
            }
        }

        Enumeration ParamterNames = request.getParameterNames();
        while(ParamterNames.hasMoreElements())
        {
            String paramName = (String)ParamterNames.nextElement();
            if(!paramName.equals("kind"))
            {
                String paramValue = request.getParameter(paramName);
                session.setAttribute(paramName, paramValue);
            }
        }

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Shooping cart</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h2>The Following items has been added to your shopping cart successfully</h2>");
        Enumeration<String> name = session.getAttributeNames();
        while(name.hasMoreElements()){
            String nowname1 = name.nextElement();
            String paramValue1 = (String) session.getAttribute(nowname1);
            out.println("<p>" + paramValue1 + " </p>");
        }

        out.println("<a href='http://localhost:8080/Part1.html'>" + "[ Back ]" +"</a>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }
}
