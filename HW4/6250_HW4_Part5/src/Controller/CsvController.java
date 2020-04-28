package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class CsvController extends AbstractController
{
    public CsvController()
    {

    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        ModelAndView mv = null;
        String option = request.getParameter("option");
        switch (option)
        {
            case "csvlist":
                String filename = request.getParameter("inputName");
                if(filename.equals("SalesOrder"))
                {
                    mv = new ModelAndView("Hw4_Part4_Display");
                    request.setAttribute("filename", filename);
                }

                else
                {
                    request.setAttribute("error", "error");
                    mv = new ModelAndView("Hw4_Part4_Search");
                }
                break;
        }
        return mv;
    }
}

