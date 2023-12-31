package messervlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/HomeServlet")
public class HomeServlet extends HttpServlet {

    private String path = "/PagesJsp/Accueil.jsp";

    //Methode de redirection
    private void view(String viewname, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
