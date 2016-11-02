package com.zapang.controller;



import com.zapang.backend.EmailService;
import com.zapang.model.pojo.Client;
import com.zapang.model.pojo.Reply;
import com.zapang.service.AdminMaintainService;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class RedirectController {
    private String ownerEmailId="support@zapang.com";
@Autowired
AdminMaintainService adminMaintain;


    public RedirectController() {
    }
    
      @RequestMapping(value="/feedback/response",method=RequestMethod.POST)
        public ModelAndView response(HttpServletRequest request ,HttpServletResponse response) {
           
            ModelAndView model=null;
//            Cookie[] cookieList = request.getCookies();
            boolean alreadyVisited=true;
//            for(Cookie cookie:cookieList){
//                if(cookie.getName().equals("val")&&cookie.getValue().equals(new SimpleDateFormat("yyyy-MM-dd").format(new Date()))){
//                    alreadyVisited=true;
//                }
//            }

          System.out.println("Got a request");
            if(!alreadyVisited){
            Client client = new Client();
            client.setEmailId(request.getParameter("email"));
            client.setName(request.getParameter("name"));
            client.setPhoneNumber(request.getParameter("number"));
//            client.setIpAddress(request.getRemoteAddr());
            List<Reply> replyList = new ArrayList<>();
            replyList.add(new Reply("options","visit",request.getParameter("visit"),client));
            replyList.add(new Reply("rating","service",request.getParameter("service"),client));
            replyList.add(new Reply("rating","menu",request.getParameter("menu"),client));
            replyList.add(new Reply("rating","ambiance",request.getParameter("ambiance"),client));
            replyList.add(new Reply("rating","food",request.getParameter("food"),client));
            replyList.add(new Reply("rating","beverage",request.getParameter("beverage"),client));
            replyList.add(new Reply("rating","overall",request.getParameter("overall"),client));
            replyList.add(new Reply("rating","refer",request.getParameter("refer"),client));
            replyList.add(new Reply("descriptive","better",request.getParameter("better"),client));
            if(request.getParameter("date")!=null){
                client.setDate(request.getParameter("date"));
            }
            else{
                client.setDate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
            }
                client.setReply(replyList);
            
            if(adminMaintain.makeClient(client)!=null){
                Float service= Float.parseFloat(request.getParameter("service"));
                Float menu= Float.parseFloat(request.getParameter("menu"));
                Float ambiance= Float.parseFloat(request.getParameter("ambiance"));
                Float food= Float.parseFloat(request.getParameter("food"));
                Float beverage= Float.parseFloat(request.getParameter("beverage"));
                Float overall= Float.parseFloat(request.getParameter("overall"));
                Float refer= Float.parseFloat(request.getParameter("refer"));
                boolean bad=false;
                boolean awesome=false;
                if((service+menu+ambiance+food+beverage+overall+refer)<=18){
                    bad=true;
                }
                if((service+menu+ambiance+food+beverage+overall+refer)>=28){
                    awesome=true;
                }
                if(bad){
                        adminMaintain.sendBadClientEmailAndSMSUpdate(request.getParameter("email"),request.getParameter("number"),request.getParameter("name"));
                   // adminMaintain.sendEmployeeEmailUpdate(request.getParameter("email"), "Name : "+request.getParameter("name")+", Email Id : "+request.getParameter("email")+", Number : "+request.getParameter("number"));
                }
                else if(awesome){
                      adminMaintain.sendGoodClientEmailAndSMSUpdate(request.getParameter("email"),request.getParameter("number"),request.getParameter("name"));
              
                }
                else{
                          adminMaintain.sendOkayClientEmailAndSMSUpdate(request.getParameter("email"),request.getParameter("number"),request.getParameter("name"));
              
                  }
//                  Cookie myCookie =new Cookie("val", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
//                  response.addCookie(myCookie);
                        model= new ModelAndView("thankyou");
                        model.addObject("message", "Thank You");
                    }
            else{
                 model= new ModelAndView("feedback");
                 model.addObject("message", "Our people seems to be busy can you try again?");
            }
            }
            else{
                  model= new ModelAndView("thankyou");
                        model.addObject("message", "Thank You");
            }
            return model;
        }
    
  
  @RequestMapping(value="/")
    public ModelAndView init(HttpSession session,HttpServletRequest request){
    return new ModelAndView("home");
    }
      
  @RequestMapping(value="/index.htm")
    public ModelAndView initAlias(HttpSession session,HttpServletRequest request) {
    return new ModelAndView("home");
    }
   @RequestMapping(value="/feedback")
    public ModelAndView feedback(HttpSession session,HttpServletRequest request) {
        ModelAndView model= new ModelAndView("feedback");
        Cookie[] cookieList = request.getCookies();
            boolean alreadyVisited=false;
            for(Cookie cookie:cookieList){
                if(cookie.getName().equals("val")&&cookie.getValue().equals(new SimpleDateFormat("yyyy-MM-dd").format(new Date()))){
                    alreadyVisited=true;
                }
            }
            if(alreadyVisited){
           model= new ModelAndView("thankyou");
                        model.addObject("message", "Thank You");
            }
    return model;
    } 
     @RequestMapping(value="/menu")
    public ModelAndView menu(HttpSession session,HttpServletRequest request) {
    return new ModelAndView("menu");
    } 
     @RequestMapping(value="/new")
    public ModelAndView newDisplay(HttpSession session,HttpServletRequest request) {
    return new ModelAndView("new");
    } 
     @RequestMapping(value="/facts")
    public ModelAndView facts(HttpSession session,HttpServletRequest request) {
    return new ModelAndView("facts");
    } 
}
