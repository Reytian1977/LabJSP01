package messervlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import mesmodels.EvaluationDbContext;

import java.io.IOException;

@WebServlet(name = "SupprimerServlet", value = "/SupprimerServlet")
public class SupprimerServlet extends HttpServlet {

    //Propiete
    private EvaluationDbContext EvaluationDbContext = new EvaluationDbContext();

    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("numero") != null) {
            int num = Integer.parseInt(request.getParameter("numero"));
            EvaluationDbContext.Supprimer(num);
        }

        response.sendRedirect(request.getContextPath()+"/ListeServlet");
    }

    public void init() {
        // insérer votre code

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //insérer votre code
        proccesRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //insérer votre code
        proccesRequest(request, response);
    }
}
