/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ConexaoHibernate;
import com.mysql.jdbc.Util;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.aplication.AplCadastrarClasse;
import model.aplication.AplCadastrarItem;
import model.aplication.AplCadastrarTitulo;
import model.domain.Titulo;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Guibson
 */
@WebServlet(name = "ctrCadastrarItem", urlPatterns = {"/ctrCadastrarItem"})
public class ctrCadastrarItem extends HttpServlet {

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

        long idTitulo = Long.parseLong(request.getParameter("titulos"));
      
        String tipo = request.getParameter("tipo");
        String numero = (request.getParameter("numero"));

        String date = (request.getParameter("data"));
        String nascimento = request.getParameter("dataDeNascimento");
        Calendar dataC = null;

        Date dataD;
        try {
            dataD = new SimpleDateFormat("yyyy-MM-dd").parse(date);
            dataC = Calendar.getInstance();
            dataC.setTime(dataD);
        } catch (ParseException ex) {
            Logger.getLogger(ctrCadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }

        

        Titulo titulo = null;
        Session session = null;
        SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
        session = sessionFac.openSession();
        Criteria criteria = session.createCriteria(Titulo.class);
        criteria.add(Restrictions.eq("idTitulo", idTitulo));
        List drs = criteria.list();
        Iterator iterator = drs.iterator();

        while (iterator.hasNext()) {
            Titulo ti = (Titulo) iterator.next();

            titulo = ti;
        }

        

        int ret = 0;

        switch (operacao) {
            case "inserir": {

                
            try {
                ret = AplCadastrarItem.inserirItem(numero, dataC, tipo, titulo);
            } catch (ClassNotFoundException | ParseException ex) {
                Logger.getLogger(ctrCadastrarItem.class.getName()).log(Level.SEVERE, null, ex);
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
                long id;
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
