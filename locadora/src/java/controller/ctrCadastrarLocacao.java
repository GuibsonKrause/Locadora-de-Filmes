/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ConexaoHibernate;
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
import model.aplication.AplCadastrarLocacao;
import model.domain.Cliente;
import model.domain.Item;
import model.domain.Locacao;
import model.domain.Socio;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author bianc
 */
@WebServlet(name = "ctrCadastrarLocacao", urlPatterns = {"/ctrCadastrarLocacao"})
public class ctrCadastrarLocacao extends HttpServlet {

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

        int ret = 0;
        Session session = null;
        SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
        session = sessionFac.openSession();

        Criteria criteria = null;
        Iterator iterator = null;

        switch (operacao) {
            case "inserirLoc": {

                long idCliente = Long.parseLong(request.getParameter("cliente"));
                long idItem = Long.parseLong(request.getParameter("item"));
                float valor = Float.parseFloat(request.getParameter("valor"));

                String dataPrevista = (request.getParameter("dataPrevista"));
                Calendar dataPrev = null;

                Date dataP;
                try {
                    dataP = new SimpleDateFormat("yyyy-MM-dd").parse(dataPrevista);
                    dataPrev = Calendar.getInstance();
                    dataPrev.setTime(dataP);
                } catch (ParseException ex) {
                    Logger.getLogger(ctrCadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
                }

                Item item = null;
                session.createCriteria(Item.class);
                criteria.add(Restrictions.eq("IdSerie", idItem));
                List it = criteria.list();
                iterator = it.iterator();

                while (iterator.hasNext()) {
                    Item itm = (Item) iterator.next();

                    item = itm;
                }

                Cliente cliente = null;

                criteria = session.createCriteria(Cliente.class);
                criteria.add(Restrictions.eq("numInscricao", idCliente));
                List cli = criteria.list();
                iterator = cli.iterator();

                while (iterator.hasNext()) {
                    Cliente clie = (Cliente) iterator.next();

                    cliente = clie;
                }

                try {
                    ret = AplCadastrarLocacao.inserirLocacao(cliente, Calendar.getInstance(), dataPrev, valor, item);
                } catch (ClassNotFoundException ex) {
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
            case "excluirLoc":
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

            case "inserirDev": {

                long idLoc = Long.parseLong(request.getParameter("locacaoItem"));

                Locacao locacao = null;

                session = sessionFac.openSession();

                criteria = session.createCriteria(Locacao.class);
                criteria.add(Restrictions.eq("IdLocacao", idLoc));
                List ite = criteria.list();
                iterator = ite.iterator();

                while (iterator.hasNext()) {
                    Locacao loc = (Locacao) iterator.next();

                    locacao = loc;
                }
                ret = AplCadastrarLocacao.inserirDevolucao(locacao, Calendar.getInstance());

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
