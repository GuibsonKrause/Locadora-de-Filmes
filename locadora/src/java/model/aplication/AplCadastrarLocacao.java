/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import java.util.Calendar;
import model.domain.Ator;
import model.domain.Cliente;
import model.domain.Item;
import model.domain.Locacao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author bianc
 */
public class AplCadastrarLocacao {

    public static int inserirLocacao(Cliente cliente, Calendar locacao, Calendar dataPrev, float valor, Item item) throws ClassNotFoundException {

        Session session = null;
        Transaction t = null;
    
        Calendar dataEfet = null;
        Locacao l = new Locacao();
        l.setItem(item);
        l.setCliente(cliente);
        l.setValorCobrado(valor);
        l.setDtDevolucaoPrevista(dataPrev);
        l.setDtLocacao(locacao);
        l.setMultaCobrada(0);
        l.setDtDevolucaoEfetiva(dataEfet);
        
        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(l);
            t.commit();
            return 1;
        } catch (HibernateException e) {
            t.rollback();
            return 2;
        } finally {
            session.close();
        }
    }

    public static int excluirAtor(long id) {
        Ator a = new Ator();
        a.setID(id);

        Transaction t = null;
        Session session = null;

        try {
           SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            
            session.delete(a);
            t.commit();

            return 1;

        } catch (HibernateException e) {
            t.rollback();
            return 2;
        } finally {
            session.close();
        }

    }

       public static int inserirDevolucao(Locacao locacao, Calendar instance) {

        Session session = null;
        Transaction t = null;
    
        float multa = locacao.getValorCobrado();
        Locacao l = new Locacao();
        l = locacao;
        l.setDtDevolucaoEfetiva(instance);
        if(l.getDtDevolucaoPrevista().compareTo(instance) < 0 ){
            l.setMultaCobrada(multa);
            l.setValorCobrado(multa+ l.getValorCobrado());
        }        
        
    
        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(l);
            t.commit();
            return 1;
        } catch (HibernateException e) {
            t.rollback();
            return 2;
        } finally {
            session.close();
        }
    }

}
