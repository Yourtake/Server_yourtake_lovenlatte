/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.zapang.model.dao;

import com.zapang.model.pojo.Admin;
import com.zapang.model.pojo.Message;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Welcome
 */
@Repository
public class AdminDAOImpl<T> implements java.io.Serializable, GenericDAO {
    private Session session=null;
    @Autowired
    private SessionFactory sessionFactory;

    public AdminDAOImpl() {
    }
   
    @Override
    public Object buildEntity(Object entity, boolean coded) {
         Admin admin = (Admin) entity;
         if(!coded){
            Md5PasswordEncoder encoder = new Md5PasswordEncoder();
            admin.setPassword(encoder.encodePassword(admin.getPassword(), null));
         }
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            session.save(admin);
            admin = (Admin) session.get(Admin.class, admin.getUsername());
            session.getTransaction().commit();
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in building Admin and its properties at AdminDAO "+e);
            e.printStackTrace();
            admin=null;
        }
        finally{
            if(session!=null){
            if(session.isOpen()){
                session.close();
            }
            }
            session=null;
        }
        return (T) admin;

    }


    @Override
    public boolean addPropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object readProperty(Object paramId) {
        Admin admin=null;
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            admin=(Admin) session.get(Admin.class, (String) paramId);
            session.getTransaction().commit();
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in getting Admin properties at AdminDAO "+e);
            e.printStackTrace();
            admin=null;

        }
        finally{
            if(session!=null){
            if(session.isOpen()){
            session.close();
           }
            }
            return (T) admin;
        }
    }

   
    @Override
    public Object readPropertyList(Object entity,String listType){
        Admin admin =(Admin) entity;
        List list=null;
        switch (listType){
            case "Inbox":
                try{
                    session = getSessionFactory().openSession();
                    session.beginTransaction();
                    admin=(Admin) session.get(Admin.class, admin.getUsername());
                  
                   
                    Criteria criteria = session.createCriteria(Message.class,"msg");
                   criteria.add(Restrictions.eq("msg.receiver.username", admin.getUsername()));
                   criteria.addOrder(Order.desc("messageId"));
                  
                   criteria.setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY);
                    criteria.setFirstResult(0);
                    criteria.setMaxResults(10);
                   list=criteria.list();
                    session.getTransaction().commit();
                }
                catch(Exception e){
                    session.getTransaction().rollback();
                    System.out.println("Error in reading Favourites at CustomerDAO "+e);
                    e.printStackTrace();
                    admin=null;
                }
                finally{
                    if(session!=null){
                    if(session.isOpen()){
                session.close();
            }}
                    
                }
                break;
             case "Sent":
                   try{
                    session = getSessionFactory().openSession();
                    session.beginTransaction();
                   
                    admin=(Admin) session.get(Admin.class, admin.getUsername());
         
                   
                    Criteria criteria = session.createCriteria(Message.class,"msg");
                   criteria.add(Restrictions.eq("msg.sender.username", admin.getUsername()));
                   criteria.addOrder(Order.desc("messageId"));
                  
                   criteria.setResultTransformer(CriteriaSpecification.DISTINCT_ROOT_ENTITY);
                    criteria.setFirstResult(0);
                    criteria.setMaxResults(10);
                    list=criteria.list();
                    session.getTransaction().commit();
                }
                catch(Exception e){
                    session.getTransaction().rollback();
                    System.out.println("Error in reading Favourites at CustomerDAO "+e);
                    e.printStackTrace();
                    admin=null;
                }
                finally{
                       if(session!=null){
                    if(session.isOpen()){
                session.close();
            }}
                }
             
                break;   
             default :
                System.out.println("Not an option");
                admin=null;
                break;
        }
        
        return (T) list;
    }
    @Override
    public boolean updateProperty(Object entity, Object paramVal, String paramType) {
         boolean flag=false;
        Admin admin=(Admin) entity;
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            if(!paramType.equals("All")){
                    admin=(Admin) session.get(Admin.class,admin.getUsername());
            }
            switch(paramType){
                case "Password":
                    
                String password=new Md5PasswordEncoder().encodePassword((String)paramVal, null);
                    admin.setPassword(password);
                    password=null;
                    break;
                case "All":
                    admin = (Admin) paramVal;
                    break;
                default:
                    System.out.println("Not an option");
                    break;
            }
            
            session.update(admin);
            session.getTransaction().commit();
            flag=true;
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in updating Admin properties at AdminDAO "+e);
            e.printStackTrace();
        }
        finally{
            if(session!=null){
            if(session.isOpen()){
                session.close();
            }
            }
            admin=null;
            return flag;
        }
    }

    @Override
    public boolean updatePropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteEntity(Object entity) {
             boolean flag=false;
        Admin admin = (Admin) entity;
        List<T> list;
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            admin = (Admin) session.get(Admin.class, admin.getUsername());
            
            session.delete(admin);
            session.getTransaction().commit();
            flag=true;
        }
        catch(Exception e){
            admin=null;
            session.getTransaction().rollback();
            System.out.println("Error in deleting Admin and its properties at AdminDAO "+e);
            e.printStackTrace();
        }
        finally{
            if(session!=null){
            if(session.isOpen()){
                session.close();
            }}
            
        }
        admin=null;
        return flag;
    }

    @Override
    public Object deletePropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    @Override
public List fetchEntities(String paramVal) {
        List list=null;
        if(paramVal.equals("OrderStatus")){
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            Criteria criteria=session.createCriteria(Admin.class,"admin");
            criteria.add(Restrictions.eq("admin.orderStatus", 1));
            list=criteria.list();
            session.getTransaction().commit();
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in getting Admin list at AdminDAO "+e);
            e.printStackTrace();
        

        }
        finally{
            if(session!=null){
            if(session.isOpen()){
            session.close();
           }}
          
        }
        }
          return list;
    }
    public List fetchEntities(int power) {
        List list=null;
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            Criteria criteria=session.createCriteria(Admin.class,"admin");
         //   criteria.add(Restrictions.or(Restrictions.eq("admin.power", power),Restrictions.gt("admin.power", power)));
            criteria.addOrder(Order.asc("admin.name"));
            criteria.addOrder(Order.asc("admin.power"));
            list=criteria.list();
            session.getTransaction().commit();
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in getting Admin list at AdminDAO "+e);
            e.printStackTrace();
        

        }
        finally{
            if(session!=null){
            if(session.isOpen()){
            session.close();
           }
            }
            session=null;
            return list;
        }
    }
    
    
    

    @Override
    public Object fetchEntity(Object property) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buildInnerPropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object readInnerPropertyList(Object entity, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteInnerPropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object buildEntity(Object entity) {
        Admin admin = (Admin) entity;
         
            Md5PasswordEncoder encoder = new Md5PasswordEncoder();
            admin.setPassword(encoder.encodePassword(admin.getPassword(), null));
         
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            session.save(admin);
            admin = (Admin) session.get(Admin.class, admin.getUsername());
            session.getTransaction().commit();
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in building Admin and its properties at AdminDAO "+e);
            e.printStackTrace();
            admin=null;
        }
        finally{
            if(session!=null){
            if(session.isOpen()){
                session.close();
            }
            }
            session=null;
        }
        return (T) admin;
    
    }
     public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

        public void setSessionFactory(SessionFactory sessionFactory) {
            this.sessionFactory = sessionFactory;
        }
}
