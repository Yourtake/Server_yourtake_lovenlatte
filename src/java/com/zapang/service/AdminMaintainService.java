/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.zapang.service;

import com.zapang.backend.EmailService;
import com.zapang.backend.LoginInfoService;
import com.zapang.backend.SMSSending;
import com.zapang.model.dao.AdminDAOImpl;
import com.zapang.model.dao.ClientDAOImpl;
import com.zapang.model.pojo.Admin;
import com.zapang.model.pojo.Client;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
/**
 *
 * @author Welcome
 */
@Service
@Transactional
public class AdminMaintainService {
    
@Autowired 
AdminDAOImpl adao;
@Autowired
ClientDAOImpl cdao;


    
    public Admin checkPresence(Admin admin){
       admin = (Admin) adao.readProperty(admin.getUsername());
       return admin;
    }

    public boolean buildEmployee(String username, String name, String work, String initiatorName) {
        Admin creator =  checkPresence(new Admin(initiatorName));
        
        
            Integer passcode=null;
            Random r = new Random();
            passcode=r.nextInt(9)*1000+r.nextInt(9)*100+r.nextInt(9)*10+r.nextInt(9);
            Md5PasswordEncoder encoder = new Md5PasswordEncoder();
            String pass=encoder.encodePassword(passcode.toString(), null).toString();
           
            new LoginInfoService("Welcome to Zapang!!",
                    "Hi, "
                    + "<br/>"
                    + "<br/>"
                    +" We welcome you to Zapang's new Admin website. Please note your following credentials. You can change your password through settings.<br/>"
                    + "<br/> "
                    + "<br/>"
                    + "Your user id is "+username+" and password is : "+pass
                    + "<br/>"
                    + "Login URL http://162.246.21.98/Zapang/admin"
                    + "<br/>"
                    + "<br/>"
                    + "Regards,<br/>Zapang Support",
                    "admin",username).start();
             System.err.println(pass);
            passcode=null;
            encoder=null;
            
        
        if(creator==null){
            return false;
        }
      
        Admin admin=new Admin(username);
       admin.setPassword(pass);
       admin.setRole("ROLE_ADMINISTRATOR");
       admin.setWork(work);
       admin.setPower(creator.getPower()+1);
       admin.setName(name);
        pass=null;
                
                if(adao.buildEntity(admin)!=null){
                    admin=null;
                    return true;
                }
    return false;
    }
 public void sendGoodClientEmailAndSMSUpdate(String emailId,String number,String name) {
          
            
            new EmailService(emailId,"Thank you for you time",
                    "Hi, "
                    + "<br/>"
                    + "<br/>"
                    +" Hi "+name+", <br/><br/>We are glad you enjoyed our services and look forward to serving you again. <br/>"
                    + "<br/>"
                    + "<br/>"
                    + "Regards,<br/>Zapang Support").start();
            new SMSSending(number,"Hi "+name+", We are glad you enjoyed our services and look forward to serving you again").start();
    }
  public void sendOkayClientEmailAndSMSUpdate(String emailId,String number,String name) {
          
            
            new EmailService(emailId,"Thank you for you time",
                    "Hi, "
                    + "<br/>"
                    + "<br/>"
                    +" Hi "+name+", <br/><br/>Thank you for your patronage and feedback and we look forward to enhancing your future experiences. <br/>"
                    + "<br/>"
                    + "<br/>"
                    + "Regards,<br/>Zapang Support").start();
            new SMSSending(number,"Hi "+name+", Thank you for your patronage and feedback and we look forward to enhancing your future experiences.").start();
    }
 public void sendBadClientEmailAndSMSUpdate(String emailId,String number,String name) {
          
            
            new EmailService(emailId,"Thank you for you time",
                    "Hi, "
                    + "<br/>"
                    + "<br/>"
                    +" Hi "+name+", <br/><br/>We value your feedback and will surely work towards enhancing your future experiences.  <br/>"
                    + "<br/>"
                    + "<br/>"
                    + "Regards,<br/>Zapang Support").start();
            new SMSSending(number,"Hi "+name+", We value your feedback and will surely work towards enhancing your future experiences.").start();
    }
 /*
  public void sendEmployeeEmailUpdate(String emailId,String details) {
          
            new EmailService(emailId,"Oops! Bad Survey..",
                    "Hi, "
                    + "<br/>"
                    + "<br/>"
                    +" Client details : "
                    +details
                    +"<br/>"
                    + "<br/> "
                    + "check http://162.246.21.98/Zapang/admin"
                    + "<br/>"
                    + "<br/>"
                    + "Regards,<br/>Love Latte Support").start();
    }
*/
      public List<Admin> getHrList(int power){
          return (List<Admin>) adao.fetchEntities(power);
      }      

    public boolean setPassword(Admin admin, String parameter) {
       return adao.updateProperty(admin, parameter, "Password");
    }

    public boolean deleteEmployee(Admin admin) {
       return adao.deleteEntity(admin);
    }

    public List<Client> getData(){
        return (List<Client>) cdao.readProperty("All",null,null,null,null,null);
    }
    
    public List<Client> getSpecificData(String name, String number, String email, String date, String ipAddress){
        return (List<Client>) cdao.readProperty("NameNumberEmailIpaddressDate",name,number,email,ipAddress,date);
    }
public Client makeClient(Client client){
    return (Client) cdao.buildEntity(client);
}
public String getAverage(String question){
    return (String) cdao.readInnerProperty("rating", question, "average");
}
public String getTodayAverage(String question){
    return (String) cdao.readInnerPropertyToday("rating", question, new SimpleDateFormat("yyyy-MM-dd").format(new Date()),"average");
}
    public Long getTodayCount() {
        return cdao.fetchEntitySizeToday();
    }

    public String getAverageOnDate(String question, String date) {
        return cdao.fetchAvgByTypeAndDate(question, date);
    }
    public int getNPS(){
        Double prom=Double.valueOf(cdao.getProm().toString());
        Double pass=Double.valueOf(cdao.getPass().toString());
        Double det=Double.valueOf(cdao.getDet().toString());
        Double nps=(prom/(prom+pass+det))*100-((pass+det)/(prom+pass+det))*100;
        
        return Math.round(nps.intValue()); 
    }
    public int getPass(){
        return Math.round(cdao.getPass()/7);
    }
    public int getProm(){
        return Math.round(cdao.getProm()/7);
    }
    public int getDet(){
        return Math.round(cdao.getDet()/7);
    }
}
