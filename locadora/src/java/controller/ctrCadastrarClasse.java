/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.aplication.AplCadastrarClasse;

/**
 *
 * @author bianc
 */
@WebServlet(name = "ctrCadastrarClasse", urlPatterns = {"/ctrCadastrarClasse"})
public class ctrCadastrarClasse extends HttpServlet {

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
            throws ServletException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String mensagem;
        String operacao = request.getParameter("operacao");
        String nome = request.getParameter("nome");
        float valor = Float.parseFloat(request.getParameter("valor"));

        String date =(request.getParameter("data"));
        
        Calendar data = null;
        
      
            Date dataT;
        try {
            dataT = new SimpleDateFormat("yyyy-MM-dd").parse(date);
            data = Calendar.getInstance();
            data.setTime(dataT);
        } catch (ParseException ex) {
            Logger.getLogger(ctrCadastrarClasse.class.getName()).log(Level.SEVERE, null, ex);
        }
           
             
        int ret = 0;
        long id;
        switch (operacao) {
            case "inserir":  {

            try {
                ret = AplCadastrarClasse.inserirClasse(nome, data ,valor);
            } catch (ParseException ex) {
                Logger.getLogger(ctrCadastrarClasse.class.getName()).log(Level.SEVERE, null, ex);
            }

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
            }
            break;
            case "excluir":

                id = Long.parseLong(request.getParameter("id"));
                ret = AplCadastrarClasse.excluirClasse(id);
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
            throws ServletException {

        
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ctrCadastrarClasse.class.getName()).log(Level.SEVERE, null, ex);
        }
        

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
            throws ServletException {

        
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ctrCadastrarClasse.class.getName()).log(Level.SEVERE, null, ex);
        }
        

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}// </editor-fold>

