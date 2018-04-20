/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.aplication;

import DAO.ConexaoHibernate;
import java.util.List;
import model.domain.Ator;
import model.domain.Classe;
import model.domain.Diretor;
import model.domain.Titulo;
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
public class AplCadastrarTitulo {

   public static int inserirTitulo(String nome, List<Ator> atores, Diretor diretor, int ano, String sinopse, String categoria, Classe classe) {

        Session session = null;
        Transaction t = null;
        if ("".equals(nome)) {
            return 0;
        }
        Titulo ti = new Titulo(nome, ano, sinopse, categoria, atores, diretor, classe);
        
        try {
            SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            session.save(ti);
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
        Titulo ti = new Titulo();
        ti.setID(id);

        Transaction t = null;
        Session session = null;

        try {
           SessionFactory sessionFac = ConexaoHibernate.getSessionFactory();
            session = sessionFac.openSession();
            t = session.beginTransaction();
            
            session.delete(ti);
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
