package messervlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import mesmodels.Evaluation;
import mesmodels.EvaluationDbContext;

import java.io.IOException;

@WebServlet(name = "ModifierServlet", value = "/ModifierServlet")
public class ModifierServlet extends HttpServlet {

    //Propiete
    private EvaluationDbContext EvaluationDbContext = new EvaluationDbContext();
    public void init() {
        // insérer votre code

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // insérer votre code
        Evaluation e = EvaluationDbContext.rechercher(Integer.parseInt(request.getParameter("numero")));
        request.setAttribute("evaluation", e);

        RequestDispatcher dis = request.getRequestDispatcher("modifierEvaluation.jsp");
        dis.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //insérer votre code
        Evaluation e = new Evaluation();
        e.mapper(request);
        EvaluationDbContext.Modifier(e);

        response.sendRedirect(request.getContextPath()+"/ListeServlet");
    }


}
