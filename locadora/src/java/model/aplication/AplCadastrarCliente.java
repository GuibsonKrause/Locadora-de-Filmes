/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import java.util.Calendar;
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

    public static int inserirDependente(Socio socio, String nome,  Calendar data_nascimento, String sexo) throws ClassNotFoundException {

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

    public static int excluirSocio(long id) {
        Socio s = new Socio();
        s.setNum_inscricao(id);

        Transaction t = null;
        Session session = null;

        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();

            session.delete(s);
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
