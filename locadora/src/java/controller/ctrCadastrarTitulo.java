/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ConexaoHibernate;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.aplication.AplCadastrarTitulo;
import model.domain.Ator;
import model.domain.Classe;
import model.domain.Diretor;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author bianc
 */
@WebServlet(name = "ctrCadastrarTitulo", urlPatterns = {"/ctrCadastrarTitulo"})
public class ctrCadastrarTitulo extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

        String operacao = request.getParameter("operacao");
        String nome = request.getParameter("nome");
        String ators[] = request.getParameterValues("atores");
        long idDiretor = Long.parseLong(request.getParameter("diretores"));
        int ano = Integer.parseInt(request.getParameter("ano"));
        String sinopse = request.getParameter("sinopse");
        String categoria = request.getParameter("categoria");
        long idClasse = Long.parseLong(request.getParameter("classes"));

        int ret;
        long idAtor;
       

        List<Ator> atores = new ArrayList();

        Diretor diretor = null;
        Classe classe = null;

        switch (operacao) {

            case "inserir":

               
                Session session = null;
                SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
                session = sessionFac.openSession();
                Criteria criteria = null;
                Iterator iterator = null;
               
                //Ator
                criteria = session.createCriteria(Ator.class);
                List ats = criteria.list();
                iterator = ats.iterator();
                
                

                while (iterator.hasNext()) {
                    Ator a = (Ator) iterator.next();
                    idAtor = a.getID();

                     if (comparaAtor(idAtor, ators) == 1) {
                        atores.add(a);
                    }

                }

                //diretor
                criteria = session.createCriteria(Diretor.class);
                criteria.add(Restrictions.eq("idDiretor", idDiretor));
                List drs = criteria.list();
                iterator = drs.iterator();

                while (iterator.hasNext()) {
                    Diretor d = (Diretor) iterator.next();

                    diretor = d;
                }

                //Classe
                criteria = session.createCriteria(Classe.class);
                criteria.add(Restrictions.eq("idClasse", idClasse));
                List cls = criteria.list();
                iterator = cls.iterator();

                while (iterator.hasNext()) {
                    Classe cl = (Classe) iterator.next();
                    classe = cl;
                }

                /*=======INSERE===============================================================================================*/
                ret = AplCadastrarTitulo.inserirTitulo(nome, atores, diretor, ano, sinopse, categoria, classe);

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

      private long comparaAtor(long idAtor, String[] atores) {

        int i = 0;
        long idAt;

        while (i < atores.length) {
            idAt = Long.parseLong(atores[i]);
            if (idAtor == idAt) {
                return 1;
            }
            i++;
        }
        return 0;
    }
    
}
