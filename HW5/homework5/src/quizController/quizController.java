package quizController;

import POJOs.quizPOJO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class quizController extends AbstractController
{
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        ModelAndView result = new ModelAndView("quiz");
        if(request.getMethod().equals("GET"))
        {
            result.addObject("type", "quiz");
            quizPOJO quizObj = new quizPOJO();
            quizObj.setQuestion("Which life cycle method is called once in servlet life?");
            List<String> nowlist = quizObj.getAnswers();
            nowlist.add("class loading");
            nowlist.add("init()");
            nowlist.add("service()");
            nowlist.add("destroy()");
            result.addObject("quiz", quizObj);
            result.addObject("nextUrl", "/quiz/2.htm");
            return result;
        }

        HttpSession session = request.getSession(true);
        session.setAttribute(request.getParameter("question"), request.getParameter("answer"));

        String url = request.getRequestURI();
        if(url.endsWith("result.htm"))  return resultDisplay(request, result);
        return nextPageGenerator(request, result);
    }

    private ModelAndView resultDisplay(HttpServletRequest request, ModelAndView result)
    {
        result.addObject("type", "result");
        return result;
    }

    private ModelAndView nextPageGenerator(HttpServletRequest request, ModelAndView result)
    {
        result.addObject("type", "quiz");
        quizPOJO quizObj = new quizPOJO();
        List<String> nowlist = quizObj.getAnswers();

        String url = request.getRequestURI();

        if(url.endsWith("2.htm"))
        {
            quizObj.setQuestion("Which statement is not true about ServletContext?");
            nowlist.add("There is one ServletContext per one application");
            nowlist.add("Generally it is used to get web app parameters");
            nowlist.add("We can get Server Information though it");
            nowlist.add("There is one ServletContext per one servlet");
            result.addObject("nextUrl", "/quiz/3.htm");
        }

        else if(url.endsWith("3.htm"))
        {
            quizObj.setQuestion("Which interface contain servlet life-cycle methods?");
            nowlist.add("HttpServlet");
            nowlist.add("GenericServlet");
            nowlist.add("Service");
            nowlist.add("Servlet");
            result.addObject("nextUrl", "/quiz/4.htm");
        }

        else if(url.endsWith("4.htm"))
        {
            quizObj.setQuestion("Which life-cycle method make ready the servlet for garbage collection?");
            nowlist.add("int");
            nowlist.add("service");
            nowlist.add("system.gc");
            nowlist.add("destroy");
            result.addObject("nextUrl", "/quiz/5.htm");
        }

        else if(url.endsWith("5.htm"))
        {
            quizObj.setQuestion("Which method does not exists in HttpServlet Class?");
            nowlist.add("service");
            nowlist.add("init");
            nowlist.add("doGet");
            nowlist.add("doPost");
            result.addObject("nextUrl", "/quiz/6.htm");
        }

        else if(url.endsWith("6.htm"))
        {
            quizObj.setQuestion("Which life-cycle method is called once in servlet life again?");
            nowlist.add("class loading again");
            nowlist.add("init() again");
            nowlist.add("service() again");
            nowlist.add("destroy() again");
            result.addObject("nextUrl", "/quiz/7.htm");
        }

        else if(url.endsWith("7.htm"))
        {
            quizObj.setQuestion("Which method does not exists in HttpServlet Class again?");
            nowlist.add("service again");
            nowlist.add("init again");
            nowlist.add("doGet again");
            nowlist.add("doPost again");
            result.addObject("nextUrl", "/quiz/8.htm");
        }

        else if(url.endsWith("8.htm"))
        {
            quizObj.setQuestion("Which life-cycle method make ready the servlet for garbage collection again?");
            nowlist.add("int again");
            nowlist.add("service again");
            nowlist.add("system.gc again");
            nowlist.add("destroy again");
            result.addObject("nextUrl", "/quiz/9.htm");
        }

        else if(url.endsWith("9.htm"))
        {
            quizObj.setQuestion("Which interface contain servlet life-cycle methods again?");
            nowlist.add("HttpServlet again");
            nowlist.add("GenericServlet again");
            nowlist.add("Service again");
            nowlist.add("Servlet again");
            result.addObject("nextUrl", "/quiz/10.htm");
        }

        else
        {
            quizObj.setQuestion("Which statement is not true about ServletContext again?");
            nowlist.add("There is one ServletContext per one application again");
            nowlist.add("Generally it is used to get web app parameters again");
            nowlist.add("We can get Server Information though it again");
            nowlist.add("There is one ServletContext per one servlet again");
            result.addObject("nextUrl", "/quiz/result.htm");
        }
        result.addObject("quiz", quizObj);
        return result;
    }
}
