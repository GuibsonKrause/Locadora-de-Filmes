/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import java.sql.SQLException;
import model.domain.Ator;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
/**
 *
 * @author bianc
 */
public class AplCadastrarAtor {

    public static int inserirAtor(String nome) throws SQLException, ClassNotFoundException {

        Session session = null;

        if ("".equals(nome)) {
            return 0;
        }
        Ator a = new Ator();
        a.setNome(nome);
        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            Transaction t = session.beginTransaction();
            session.save(a);
            t.commit();
            return 1;
        } catch (HibernateException e) {
            return 2;
        } 
    }
}
