package Controller;

import dao.MovieDao;
import pojo.Movie;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class MovieController extends AbstractController
{
    public MovieController()
    {

    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        HttpSession session = request.getSession();
        ModelAndView mv = null;
        String option = request.getParameter("option");

        switch (option)
        {
            case "browse":
            {
                MovieDao md = new MovieDao();
                List<Movie> movies = md.getMovies();
                request.setAttribute("movies", movies);
                mv = new ModelAndView("Hw4_Part7_SearchMovie");
                break;
            }

            case "add":
            {
                mv = new ModelAndView("Hw4_Part7_AddMovie");
                break;
            }

            case "insert":
            {
                String title = request.getParameter("title");
                String actor = request.getParameter("actor");
                String actress = request.getParameter("actress");
                String genre = request.getParameter("genre");
                int year = Integer.parseInt(request.getParameter("year"));

                MovieDao md = new MovieDao();
                int result = md.addMovies(title, actor, actress, genre, year);
                if (result == 1)
                {
                    request.setAttribute("status", "Add Successfully");
                    mv = new ModelAndView("Hw4_Part7_AddMovie");
                }

                else
                {
                    request.setAttribute("status", "fail");
                    mv = new ModelAndView("Hw4_Part7_Error");
                }
                break;
            }
        }
        return mv;
    }
}
