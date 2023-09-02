package messervlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import mesmodels.EvaluationDbContext;

import java.io.IOException;

@WebServlet(name = "ListeServlet", value = "/ListeServlet")
public class ListeServlet extends HttpServlet {

    //Propiete
    private EvaluationDbContext EvaluationDbContext = new EvaluationDbContext();
    private String path = "/PagesJsp/listeEvaluation.jsp";

    private void view(String viewname, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listeEvaluation", EvaluationDbContext.getListeEvalutions());
        request.getRequestDispatcher(viewname).forward(request, response);
    }
    public void init() {
        // insérer votre code

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // insérer votre code
        view(path, request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //insérer votre code
        view(path, request, response);
    }


}
