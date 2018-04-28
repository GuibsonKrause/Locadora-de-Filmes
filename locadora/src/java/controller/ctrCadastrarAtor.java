/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.aplication.AplCadastrarAtor;

/**
 *
 * @author bianc
 */
@WebServlet(name = "crtCadastrarAtor", urlPatterns = {"/ctrCadastrarAtor"})
public class ctrCadastrarAtor extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String mensagem;
        String operacao = request.getParameter("operacao");

        switch (operacao) {
            case "inserir":
                String nome = request.getParameter("nome");

                int ret;
                long id;
                try {

                    ret = AplCadastrarAtor.inserirAtor(nome);
                    if (ret == 0) {
                        //  mensagem = "sucesso_cadastrar";
                        //response.sendRedirect("Ator/CadastrarAtor.jsp?msg=" + mensagem);
                    }
                    if (ret == 1) {
                        //  response.sendRedirect("sucesso.html");
                    }
                    if (ret == 2) {
                        //response.sendRedirect("erro.html");
                    }
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ctrCadastrarAtor.class.getName()).log(Level.SEVERE, null, ex);
                }

                break;
            case "excluir":
                id = Long.parseLong(request.getParameter("id"));
                ret = AplCadastrarAtor.excluirAtor(id);
                if (ret == 0) {
                    //  mensagem = "sucesso_cadastrar";
                    //response.sendRedirect("Ator/CadastrarAtor.jsp?msg=" + mensagem);
                }
                if (ret == 1) {
                    //  response.sendRedirect("sucesso.html");
                }
                if (ret == 2) {
                    //response.sendRedirect("erro.html");
                }

                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
