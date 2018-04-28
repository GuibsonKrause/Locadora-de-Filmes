/*
  * To change this license header, choose License Headers in Project Properties.
  * To change this template file, choose Tools | Templates
  * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import java.util.Calendar;
import java.util.List;
import model.domain.Cliente;
import model.domain.Dependente;
import model.domain.Socio;
import org.hibernate.Criteria;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author bianc
 */
public class AplCadastrarCliente {

    public static int inserirCliente(String nome, String sexo, Calendar data_nascimento, String end, String tel, String cpf) throws ClassNotFoundException {

        Session session = null;
        Transaction t = null;
        if ("".equals(nome)) {
            return 0;
        }
        Socio s = new Socio(cpf, end, tel, nome, data_nascimento, sexo, true);

        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(s);
            t.commit();
            return 1;
        } catch (HibernateException e) {
            t.rollback();
            return 2;
        } finally {
            session.close();
        }
    }

    public static int inserirDependente(Socio socio, String nome, Calendar data_nascimento, String sexo) throws ClassNotFoundException {

        Session session = null;
        Transaction t = null;
        if ("".equals(nome)) {
            return 0;
        }
        Dependente d = new Dependente(socio, nome, data_nascimento, sexo, true);

        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(d);
            t.commit();
            return 1;
        } catch (HibernateException e) {
            t.rollback();
            return 2;
        } finally {
            session.close();
        }
    }


     public static int excluirCliente(long id)
    {
        Session session = null;
        List<Cliente> lista = null;
        Transaction t = null;

        try
        {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();

            Criteria criteria = session.createCriteria(Cliente.class);
            criteria.add(Restrictions.eq("numInscricao", String.valueOf(id)));
            lista = criteria.list();

            if (lista.get(0) instanceof Dependente)
            {
                // Excluir Dependente
                Dependente d = new Dependente();
                d.setNum_inscricao(id);
                session.delete(d);
            } else // Socio
            {
                // Excluir Socio
                Socio s = new Socio();
                s.setNum_inscricao(id);
                session.delete(s);
            }
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

        // Fazer uma consulta por cliente no banco usando o id.
        // Pegar o objeto retornado e comparar usando o instanceof
        // Dependente ou Socio.
    }

//    public static int excluirCliente(long id)
//    {
//        Socio c = new Socio();
//        c.setNum_inscricao(id);
//
//        Transaction t = null;
//        Session session = null;
//
//        try
//        {
//            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
//            session = sessionFac.openSession();
//            t = session.beginTransaction();
//
//            session.delete(c);
//            t.commit();
//
//            return 1;
//
//        } catch (HibernateException e)
//        {
//            t.rollback();
//            return 2;
//        } finally
//        {
//            session.close();
//        }
//
//    }
//
//    public static int excluirCliente(long id)
//    {
//        Dependente d = new Dependente();
//        d.setNum_inscricao(id);
//
//        Transaction t = null;
//        Session session = null;
//
//        try
//        {
//            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
//            session = sessionFac.openSession();
//            t = session.beginTransaction();
//
//            session.delete(d);
//            t.commit();
//
//            return 1;
//
//        } catch (HibernateException e)
//        {
//            t.rollback();
//            return 2;
//        } finally
//        {
//            session.close();
//        }
//
//    }

}
