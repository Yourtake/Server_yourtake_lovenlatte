package com.zapang.test;





import com.zapang.model.dao.AdminDAOImpl;
import com.zapang.model.dao.ClientDAOImpl;
import com.zapang.model.dao.MessageDAOImpl;
import com.zapang.model.pojo.Admin;
import com.zapang.model.util.HibernateUtil;


/**
 *
 * @author Welcome
 */
public class AdvancedTest {
   
    public static void main(String[] args) {
       
        MessageDAOImpl mdao = new MessageDAOImpl();
        AdminDAOImpl adao = new AdminDAOImpl();
        ClientDAOImpl cdao = new ClientDAOImpl();
        mdao.setSessionFactory(HibernateUtil.getSessionFactory());
        adao.setSessionFactory(HibernateUtil.getSessionFactory());
        adao.buildEntity(new Admin("support@zapang.com","abcdef","ROLE_ADMINISTRATOR","Support",0,"Administrator"));
//            

        
        
     
        
        
    }
}
