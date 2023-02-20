/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DAO;

import Model.Entidad.Departamento;
import Model.Util.HibernateUtil;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author raul
 */


public class DepartamentoDAO {
    
    /************************************************/
    /*                   LISTAR                     */
    /************************************************/
    
    public static List<Departamento> getAllDepartments(){
        List <Departamento> lista = null;
        try{
            Session session = (Session) HibernateUtil.getCurrentSessionFromJPA();
            String hql = "SELECT d FROM Departamento d ORDER BY d.nombre";
            Query query = (Query) session.createQuery(hql);
            lista = query.getResultList();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return lista;
    }
    
    
    /************************************************/
    /*                   INSERTAR                   */
    /************************************************/
    
    public static boolean crear(Departamento d){
        
        Transaction transaction = null;
        try {
            Session session = (Session) HibernateUtil.getCurrentSessionFromJPA();
            transaction = session.beginTransaction();
            session.save(d);
            transaction.commit();
            return true;
            
        } 
        catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
            return false;
        }
        
    }
    
    
    
    
    
    
}
