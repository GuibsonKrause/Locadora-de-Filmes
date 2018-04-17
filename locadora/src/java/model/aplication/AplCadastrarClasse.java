/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import model.domain.Classe;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author bianc
 */
public class AplCadastrarClasse {

    public static int inserirClasse(String nome, Date data, Float valor) throws ClassNotFoundException, ParseException {

        Session session = null;
        Transaction t = null;
        if ("".equals(nome)) {
            return 0;
        }
       

             
        Classe c = new Classe();
        c.setNome(nome);
        c.setPrazoDevoulcao(data);
        c.setValor(valor);
        
        
        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(c);
            t.commit();
            return 1;
        } catch (HibernateException e) {
            t.rollback();
            return 2;
        } finally {
            session.close();
        }
    }

    public static int excluirClasse(long id) {
        Classe c = new Classe();
        c.setID(id);

        Transaction t = null;
        Session session = null;

        try {
           SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            
            session.delete(c);
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
