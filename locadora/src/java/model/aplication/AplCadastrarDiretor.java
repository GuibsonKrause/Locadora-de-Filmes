/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import model.domain.Diretor;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Guibson
 */
public class AplCadastrarDiretor
{

    public static int inserirDiretor(String nome) throws ClassNotFoundException
    {

        Session session = null;
        Transaction t = null;
        if ("".equals(nome))
        {
            return 0;
        }
        Diretor d = new Diretor();
        d.setNome(nome);
        try
        {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(d);
            t.commit();
            return 1;
        } catch (HibernateException e)
        {
            t.rollback();
            return 2;
        } finally
        {
            session.close();
        }
    }

    public static int excluirDiretor(long id)
    {
        Diretor d = new Diretor();
        d.setID(id);

        Transaction t = null;
        Session session = null;

        try
        {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();

            session.delete(d);
            t.commit();

            return 1;

        } catch (HibernateException e)
        {
            t.rollback();
            return 2;
        } finally
        {
            session.close();
        }

    }
}

