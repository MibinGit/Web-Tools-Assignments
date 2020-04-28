import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

public class QuizServlet1 extends HttpServlet {
    //Service method
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String ans = request.getParameter("ans");
        HttpSession session  = request.getSession();
        session.setAttribute("page1ans", ans);
        // Cookie page1ans = new Cookie("page1ans" , ans);
        // response.addCookie(page1ans);
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Quiz</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h2>Page 2</h2>");
        out.println("<form action = 'quizservlet2' method = 'post'>");
        out.println("<p>Question 2 : Which method is called when client request came?</p>"
                + "<input type='radio' name='page2ans' value='post' />Post<br />"
                + "<input type='radio' name='page2ans' value='init' />Init<br />"
                + "<input type='radio' name='page2ans' value='get' />Get<br />"
                + "<input type='radio' name='page2ans' value='option' />Option<br />");
                // + "<input type = 'hidden' name = 'page1ans' value = '"+ ans + "' />");
        out.println("<input type =  'submit' value = 'Next' name = 'button'/><br /></p>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }
}