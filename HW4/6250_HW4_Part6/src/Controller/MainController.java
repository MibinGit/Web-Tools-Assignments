package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class MainController extends AbstractController
{
    public MainController()
    {

    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        ModelAndView mv = null;
        String option = request.getParameter("option");
        switch (option)
        {
            case "csv":
            {
                mv = new ModelAndView("csv");
                break;
            }

            case "movie":
            {
                mv = new ModelAndView("Hw4_Part6_Movie");
                break;
            }

            default:
            {
                mv = new ModelAndView("Hw4_Part6_Main");
            }
        }
        return mv;
    }
}
