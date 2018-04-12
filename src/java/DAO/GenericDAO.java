/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.SQLException;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author bianc
 */
public class GenericDAO {
    
    public GenericDAO() {
    }
    
    public void inserir( Object cli ) throws SQLException, ClassNotFoundException {
        
        Session sessao;
        sessao = DAO.ConexaoHibernate.getSessionFactory().openSession();
        sessao.beginTransaction();
        
        sessao.save(cli);
        
        sessao.getTransaction().commit();
        sessao.close();                
    }
    
    public void alterar ( Object cli ) throws ClassNotFoundException, SQLException {

        Session sessao;
        sessao = DAO.ConexaoHibernate.getSessionFactory().openSession();
        sessao.beginTransaction();
        
        sessao.update(cli);
        
        sessao.getTransaction().commit();
        sessao.close();        
    }
    
    public void excluir ( Object cli ) throws SQLException {
        Session sessao;
        sessao = DAO.ConexaoHibernate.getSessionFactory().openSession();
        sessao.beginTransaction();
        
        sessao.delete(cli);
        
        sessao.getTransaction().commit();
        sessao.close();
    }
    
    public List listar(Class classe, String pesq) {
        
        List lista;
        Session sessao;
        
        sessao = DAO.ConexaoHibernate.getSessionFactory().openSession();
        sessao.beginTransaction();
        
        Criteria cons = sessao.createCriteria(classe);
        cons.add ( Restrictions.like("nome", pesq + "%") );
            
            
        lista = cons.list();                
        
        sessao.getTransaction().commit();
        sessao.close();
                               
        return lista;
    }
     public List listarComInt(Class classe, int pesq) {
        
        List lista;
        Session sessao;
        
        sessao = DAO.ConexaoHibernate.getSessionFactory().openSession();
        sessao.beginTransaction();
        
        Criteria cons = sessao.createCriteria(classe);
        cons.add ( Restrictions.like("nome", pesq ) );
            
            
        lista = cons.list();                
        
        sessao.getTransaction().commit();
        sessao.close();
                               
        return lista;
    }
    
    public List listas(Class classe) {
        
        List lista;
        Session sessao;
        
        sessao = DAO.ConexaoHibernate.getSessionFactory().openSession();
        sessao.beginTransaction();
        
        Criteria cons = sessao.createCriteria(classe);
        lista = cons.list();                
        
        sessao.getTransaction().commit();
        sessao.close();
                               
        return lista;
    }
}
