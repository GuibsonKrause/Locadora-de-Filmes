/*
  * To change this license header, choose License Headers in Project Properties.
  * To change this template file, choose Tools | Templates
  * and open the template in the editor.
 */
package controller;

import DAO.ConexaoHibernate;
import java.io.IOException;
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
import model.aplication.AplCadastrarCliente;
import model.domain.Socio;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author bianc
 */
@WebServlet(name = "ctrCadastrarCliente", urlPatterns = {"/ctrCadastrarCliente"})
public class ctrCadastrarCliente extends HttpServlet {

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
        String operacao = request.getParameter("operacao");

        int ret = 0;
        long id;
        switch (operacao) {
            case "inserirCliente": {
                String nome = request.getParameter("nome");
                String sexo = request.getParameter("sexo");

                String nascimento = request.getParameter("dataDeNascimento");
                Calendar data_nascimento = null;

                Date date;
                try {
                    date = new SimpleDateFormat("yyyy-MM-dd").parse(nascimento);
                    data_nascimento = Calendar.getInstance();
                    data_nascimento.setTime(date);
                } catch (ParseException ex) {
                    Logger.getLogger(ctrCadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
                }

                String tel = request.getParameter("celular");
                String cpf = request.getParameter("cpf");
                String end = request.getParameter("endereco");

                try {
                    ret = AplCadastrarCliente.inserirCliente(nome, sexo, data_nascimento, end, tel, cpf);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ctrCadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
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
            case "inserirDependente": {

                String nome = request.getParameter("nome");
                String sexo = request.getParameter("sexo");

                String nascimento = request.getParameter("dataDeNascimento");
                Calendar data_nascimento = null;

                Date date;
                try {
                    date = new SimpleDateFormat("yyyy-MM-dd").parse(nascimento);
                    data_nascimento = Calendar.getInstance();
                    data_nascimento.setTime(date);
                } catch (ParseException ex) {
                    Logger.getLogger(ctrCadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
                }
                long numInscricao = Long.parseLong(request.getParameter("socios"));

                Socio socio = null;
                Session session = null;

                SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
                session = sessionFac.openSession();
                Criteria criteria = session.createCriteria(Socio.class);
                criteria.add(Restrictions.eq("numInscricao", numInscricao));
                List drs = criteria.list();
                Iterator iterator = drs.iterator();

                while (iterator.hasNext()) {
                    Socio s = (Socio) iterator.next();

                    socio = s;
                }

                try {
                    ret = AplCadastrarCliente.inserirDependente(socio, nome, data_nascimento, sexo);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(ctrCadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
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
                ret = AplCadastrarCliente.excluirCliente(id);
                if (ret == 0)
                {

                }
                if (ret == 1)
                {

                }
                if (ret == 2)
                {

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
