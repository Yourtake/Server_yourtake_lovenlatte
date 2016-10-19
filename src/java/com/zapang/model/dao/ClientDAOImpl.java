/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.zapang.model.dao;

import com.zapang.model.pojo.Admin;
import com.zapang.model.pojo.Client;
import com.zapang.model.pojo.Reply;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Repository;

/**
 *
 * @author MumbaiZone
 */
@Repository
public class ClientDAOImpl<T> implements java.io.Serializable, GenericDAO {
    private Session session=null;
    @Autowired
    private SessionFactory sessionFactory;

    public ClientDAOImpl() {
    }
  
    
      public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

        public void setSessionFactory(SessionFactory sessionFactory) {
            this.sessionFactory = sessionFactory;
        }

    @Override
    public Object buildEntity(Object entity) {
         Client client = (Client) entity;
         
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
            session.save(client);
            client = (Client) session.get(Client.class, client.getId());
            session.getTransaction().commit();
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in building Admin and its properties at AdminDAO "+e);
            e.printStackTrace();
            client=null;
        }
        finally{
            if(session!=null){
            if(session.isOpen()){
                session.close();
            }
            }
            session=null;
        }
        return (T) client;
    }

    public Object readProperty(String listType) {
        List<Client> client=null;
        switch(listType){
            case "All":
                
        try{
            session = getSessionFactory().openSession();
            session.beginTransaction();
           client = (List<Client>)  session.createCriteria(Client.class).list();
           for(Client tclient:client){
               tclient.getReply().size();
           }
            session.getTransaction().commit();
        }
        catch(Exception e){
            session.getTransaction().rollback();
            System.out.println("Error in building Admin and its properties at AdminDAO "+e);
            e.printStackTrace();
            client=null;
        }
        finally{
            if(session!=null){
            if(session.isOpen()){
                session.close();
            }
            }
        }
            default:       
        }
        return (T) client;
    }
    public Object readInnerProperty(String type,String paramId,String calType){
        String average=null;
        List<Reply> list=null;
        switch(type){
        case "rating":
            try{
                session=getSessionFactory().openSession();
                session.beginTransaction();
               Criteria criteria= session.createCriteria(Reply.class, "reply" );
               criteria.createAlias("reply.client", "client");
               criteria.setReadOnly(true);
               Calendar cal = Calendar.getInstance();
               String date0=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
               cal.add(Calendar.DATE, -1); 
               String date1=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
               cal.add(Calendar.DATE, -1); 
               String date2=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
               cal.add(Calendar.DATE, -1); 
               String date3=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
               cal.add(Calendar.DATE, -1); 
               String date4=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
               cal.add(Calendar.DATE, -1); 
               String date5=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
               cal.add(Calendar.DATE, -1); 
               String date6=new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
               
                 
               criteria.add(
            Restrictions.or(
                   Restrictions.eq("client.date", date0), 
                               Restrictions.or(
                        Restrictions.eq("client.date", date1),
                                        Restrictions.or(
                                 Restrictions.eq("client.date", date2),
                                                 Restrictions.or(
                                          Restrictions.eq("client.date", date3),
                                                          Restrictions.or(
                                                   Restrictions.eq("client.date", date4),
                                                                   Restrictions.or(
                                                            Restrictions.eq("client.date", date5),
                                                                            Restrictions.or(
                                                                     Restrictions.eq("client.date", date6)
                                                                             )))))))
               );
               criteria.add(Restrictions.eq("reply.question", paramId));
               criteria.add(Restrictions.eq("reply.type", type));
               criteria.add(Restrictions.ne("reply.answer", "0"));
               criteria.setResultTransformer(criteria.DISTINCT_ROOT_ENTITY);
               list=(List<Reply>)criteria.list();
               session.getTransaction().commit();
               Float value=0.0f;
               for(Reply val:list){
                   value+=Float.parseFloat(val.getAnswer());
               }
               value/=list.size();
               average=value.toString();
                
            }
            catch(Exception e){
                session.getTransaction().rollback();
                e.printStackTrace();
            }
            finally{
                if(session.isOpen()){
                    session.close();
                }
            }
        case "descriptive":
        case "options":
        case "binary":
        default:
    }
        return average;
    }
      public Object readInnerPropertyToday(String type,String paramId,String date,String calType){
        String average=null;
        List<Reply> list=null;
        switch(type){
        case "rating":
            try{
                session=getSessionFactory().openSession();
                session.beginTransaction();
               Criteria criteria= session.createCriteria(Reply.class, "reply" );
               criteria.createAlias("reply.client","client");
               criteria.setReadOnly(true);
               criteria.add(Restrictions.eq("client.date", date));
               criteria.add(Restrictions.eq("reply.question", paramId));
               criteria.add(Restrictions.eq("reply.type", type));
               list=(List<Reply>)criteria.list();
               session.getTransaction().commit();
               Float value=0.0f;
               for(Reply val:list){
                   value+=Float.parseFloat(val.getAnswer());
               }
               value/=list.size();
               average=value.toString();
                
            }
            catch(Exception e){
                session.getTransaction().rollback();
                e.printStackTrace();
            }
            finally{
                if(session.isOpen()){
                    session.close();
                }
            }
        case "descriptive":
        case "options":
        case "binary":
        default:
    }
        return average;
    }
    public Long fetchEntitySizeToday() {
        Long size=0l;
       try{
                      session = getSessionFactory().openSession();
                      session.beginTransaction();
                      Criteria criteria = session.createCriteria(Client.class, "call");
                      criteria.setReadOnly(true);
                      criteria.add(Restrictions.like("date", new SimpleDateFormat("yyyy-MM-dd").format(new Date()),MatchMode.START));
                      criteria.setProjection(Projections.rowCount());
                      size = (Long) criteria.uniqueResult();
                      session.getTransaction().commit();

                    }
                    catch(Exception e){
                        session.getTransaction().rollback();
                        System.out.println("Error in deleting Items and its properties at ItemsDAO "+e);
                        e.printStackTrace();
                    }
                finally{
                    if(session!=null){
                    if(session.isOpen()){
                        session.close();
                    }}
                    session=null;
                }
       return size;
    }
     public String fetchAvgByTypeAndDate(String type,String date) {
     String average=null;
       try{
                      session = getSessionFactory().openSession();
                      session.beginTransaction();
                      Criteria criteria = session.createCriteria(Reply.class, "reply");
                      criteria.setReadOnly(true);
                      criteria.createAlias("reply.client", "client");
                      criteria.add(Restrictions.like("client.date", date,MatchMode.START));
                      criteria.add(Restrictions.like("reply.question", type));
               criteria.add(Restrictions.ne("reply.answer", "0"));
                      criteria.setResultTransformer(criteria.DISTINCT_ROOT_ENTITY);
                     List<Reply> list = criteria.list();
                       session.getTransaction().commit();
                        Float value=0.0f;
                        for(Reply val:list){
                            value+=Float.parseFloat(val.getAnswer());
                        }
                        value/=list.size();
                        average=value.toString();

                    }
                    catch(Exception e){
                        
                        if (session.getTransaction().wasCommitted()){
                        session.getTransaction().rollback();
                        }
                        System.out.println("Error in deleting Items and its properties at ItemsDAO "+e);
                        e.printStackTrace();
                    }
                finally{
                    if(session!=null){
                    if(session.isOpen()){
                        session.close();
                    }}
                    session=null;
                }
       return average;
    }
    
     public Long getProm(){
         Long val=null;
       try{
                      session = getSessionFactory().openSession();
                      session.beginTransaction();
                      Criteria criteria = session.createCriteria(Reply.class, "reply");
                      criteria.setReadOnly(true);
                      criteria.add(Restrictions.like("reply.type", "rating"));
               criteria.add(Restrictions.ne("reply.answer", "0"));
                      
                      criteria.add(Restrictions.or(Restrictions.like("reply.answer", "4",MatchMode.START),Restrictions.like("reply.answer", "5",MatchMode.START)));
                      criteria.setProjection(Projections.rowCount());
                     val = (Long) criteria.uniqueResult();
                      
                       session.getTransaction().commit();
                        

                    }
                    catch(Exception e){
                        
                        if (session.getTransaction().wasCommitted()){
                        session.getTransaction().rollback();
                        }
                        System.out.println("Error in deleting Items and its properties at ItemsDAO "+e);
                        e.printStackTrace();
                    }
                finally{
                    if(session!=null){
                    if(session.isOpen()){
                        session.close();
                    }}
                    session=null;
                }
       return val;
     }
     public Long getPass(){
           Long val=null;
       try{
                      session = getSessionFactory().openSession();
                      session.beginTransaction();
                      Criteria criteria = session.createCriteria(Reply.class, "reply");
                      criteria.setReadOnly(true);
                      criteria.add(Restrictions.like("reply.type", "rating"));
               criteria.add(Restrictions.ne("reply.answer", "0"));
                      criteria.add(Restrictions.or(Restrictions.like("reply.answer", "2",MatchMode.START),Restrictions.like("reply.answer", "3",MatchMode.START)));
                      criteria.setProjection(Projections.rowCount());
                     val = (Long) criteria.uniqueResult();
                      
                       session.getTransaction().commit();
                        

                    }
                    catch(Exception e){
                        
                        if (session.getTransaction().wasCommitted()){
                        session.getTransaction().rollback();
                        }
                        System.out.println("Error in deleting Items and its properties at ItemsDAO "+e);
                        e.printStackTrace();
                    }
                finally{
                    if(session!=null){
                    if(session.isOpen()){
                        session.close();
                    }}
                    session=null;
                }
       return val;
     }
      public Long getDet(){
           Long val=null;
       try{
                      session = getSessionFactory().openSession();
                      session.beginTransaction();
                      Criteria criteria = session.createCriteria(Reply.class, "reply");
                      criteria.setReadOnly(true);
                      criteria.add(Restrictions.like("reply.type", "rating"));
               criteria.add(Restrictions.ne("reply.answer", "0"));
                      criteria.add(Restrictions.or(Restrictions.like("reply.answer", "0",MatchMode.START),Restrictions.like("reply.answer", "1",MatchMode.START)));
                      criteria.setProjection(Projections.rowCount());
                      val = (Long) criteria.uniqueResult();
                      
                       session.getTransaction().commit();
                        
                    

                    }
                    catch(Exception e){
                        
                        if (session.getTransaction().wasCommitted()){
                        session.getTransaction().rollback();
                        }
                        System.out.println("Error in deleting Items and its properties at ItemsDAO "+e);
                        e.printStackTrace();
                    }
                finally{
                    if(session!=null){
                    if(session.isOpen()){
                        session.close();
                    }}
                    session=null;
                }
       return val;
     }
    
    @Override
    public Object buildEntity(Object entity, boolean coded) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean addPropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object readProperty(Object paramId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object readPropertyList(Object entity, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean updateProperty(Object entity, Object paramVal, String paramType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean updatePropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteEntity(Object entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object deletePropertyList(Object entity, Object property, String listType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List fetchEntities(String paramVal) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

   

    
}
