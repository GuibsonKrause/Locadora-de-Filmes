/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import java.text.ParseException;
import java.util.Calendar;
import java.util.List;
import model.domain.Item;
import model.domain.Locacao;
import model.domain.Titulo;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Guibson
 */
public class AplCadastrarItem {

    public static int inserirItem(String numSerie, Calendar dtAquisicao, String tipoItem, Titulo titulo) throws ClassNotFoundException, ParseException {

        Session session = null;
        Transaction t = null;
        if ("".equals(titulo)) {
            return 0;
        }

        Item i = new Item(numSerie, dtAquisicao, tipoItem, titulo);

        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(i);
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
        Item i = new Item();
        i.setID(id);

        Transaction t = null;
        Session session = null;

        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();

            session.delete(i);
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
