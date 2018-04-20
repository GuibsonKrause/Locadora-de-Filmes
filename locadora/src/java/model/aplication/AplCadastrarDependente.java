/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import model.domain.Ator;
import model.domain.Dependente;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author bianc
 */
public class AplCadastrarDependente {

    public static int inserirDependente(String nome) throws ClassNotFoundException {

        Session session = null;
        Transaction t = null;
        if ("".equals(nome)) {
            return 0;
        }
        Ator a = new Ator();
        a.setNome(nome);
        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(a);
            t.commit();
            return 1;
        } catch (HibernateException e) {
            t.rollback();
            return 2;
        } finally {
            session.close();
        }
    }

    public static int excluirDependente(long id) {
        Dependente d = new Dependente();
        d.setNum_inscricao(id);

        Transaction t = null;
        Session session = null;

        try {
           SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            
            session.delete(d);
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
