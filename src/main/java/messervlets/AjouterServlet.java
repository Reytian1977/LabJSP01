package messervlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import mesmodels.Evaluation;
import mesmodels.EvaluationDbContext;

import java.io.IOException;

@WebServlet(name = "AjouterServlet", value = "/AjouterServlet")
public class AjouterServlet extends HttpServlet {

    //Propiete
    private EvaluationDbContext evaluationDbContext = new EvaluationDbContext();

    public void init() {
        // insérer votre code

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // insérer votre code
        request.getRequestDispatcher("/PagesJsp/ajouterEvaluation.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //insérer votre code
        Evaluation e = new Evaluation();
        e.mapper(request);
        evaluationDbContext.Ajouter(e);
        request.getRequestDispatcher("/HomeServlet").forward(request, response);
    }


}
