package Controller;

import dao.MovieDao;
import pojo.Movie;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class BrowserController extends AbstractController
{
    public BrowserController()
    {

    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        HttpSession session = request.getSession();
        ModelAndView mv = null;
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        System.out.println(type + " : "+ keyword);
        try
        {
            MovieDao dbsOps = MovieDao.getInstance();
            List<Movie> result = dbsOps.SearchOps(type, keyword);
            request.setAttribute("list", result);
            System.out.println("Search Database Successfully! ");
        }

        catch (Exception e)
        {
            System.out.println("Search Database Fails! " + e.getMessage());
        }
        mv = new ModelAndView("Hw4_Part5_DisplayMovie");
        return mv;
    }
}
