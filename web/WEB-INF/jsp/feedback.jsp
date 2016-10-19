<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <!DOCTYPE html>

 <html>
    <head>
        
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="description" content="">
            <meta name="author" content="Souvik Das">
            <title>Love And Latte - Feedback</title>
            
            <link href="<c:url value="/resources/images/logo.png" />" rel="shortcut icon">
            <link type="text/css" href="<c:url value="/resources/css/jquery-ui-1.10.4.css" />" rel="stylesheet">
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />" rel="stylesheet">
            
            <link type="text/css" href="<c:url value="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />" rel="stylesheet">
             <link type="text/css" href="<c:url value="/resources/css/star-rating.min.css" />" rel="stylesheet">
             <link type="text/css" href="<c:url value="/resources/css/theme.min.css" />" rel="stylesheet">
             <link type="text/css" href="<c:url value="/resources/css/feedback.css" />" rel="stylesheet">   
            <link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
            <script async type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" />"></script>
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />" rel="stylesheet">        
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>" type="text/javascript"></script>
            <script type="text/javascript" src="<c:url value="//cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.3.0/bootbox.min.js" />"></script>
             <link type="text/css" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/css/bootstrap3/bootstrap-switch.min.css" />" rel="stylesheet">        
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/js/bootstrap-switch.min.js"/>" type="text/javascript"></script>
              
            <script src="<c:url value="/resources/js/star-rating.min.js"/>" type="text/javascript"></script>  
            <script src="<c:url value="/resources/js/theme.min.js"/>" type="text/javascript"></script>
            
            
    </head>
       
    <body>
          <div class="site-wrapper">
            <div class="site-wrapper-inner">
                       <div class="container">
                           <div class="header clearfix">
                               <center>
                                        <img id="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" width="100" height="90" class="img-responsive" alt="Generic placeholder thumbnail">
                                  <h3 >Love &amp; Latte</h3><hr/>
                               </center>
                           </div>
                       </div> 
                         <div class="container">
                                <div class="row">
                                 <div class="col-xs-12">
                                     <a style="color:white" href="${pageContext.request.contextPath}"> <h3 style="text-align: left"><span class="glyphicon glyphicon-circle-arrow-left"></span>&nbsp;Back</h3></a>
                                 </div>
                              </div>
                                </div>
                                 <div class="container" style="background-color: rgba(100  ,50,50,0.7);border-radius: 15px">
                             <div class="row">
                                 <center>
                                 <h3>${message}</h3>
                                 <br/>
                                     <h2 style="text-align: center" class="entry-title"><u>Let us know</u></h2>
                                 </center>
                                 
                                 <form id="feedback-form" action="${pageContext.request.contextPath}/feedback/response" method="POST" class="form-signin-heading" >
                                     
                                 <div class="form-group">
                                 <div class="col-md-4" style="padding-right: 30px">
                                          <h4><span class="glyphicon glyphicon-user"></span>&nbsp;You are..</h4>
                                          
                                          <textarea name="name" class="form-control" required="true" rows="1"  placeholder="Your name"></textarea>
                                         
                                 </div>   
                                     <div class="col-md-4" style="padding-right: 30px">
                                          <h4><span class="glyphicon glyphicon-envelope"></span>&nbsp;Offers in your inbox?</h4>
                                          
                                          <textarea name="email" class="form-control" rows="1"  placeholder="Your Email Id"></textarea>
                                         
                                 </div>
                                      <div class="col-md-4" style="padding-right: 30px">
                                          <h4><span class="glyphicon glyphicon-phone-alt"></span>&nbsp;Can I get your number?</h4>
                                          
                                          <textarea name="number" class="form-control" rows="1"  placeholder="Your Phone Number"></textarea>
                                         
                                 </div> 
                                     
                                     <div class="col-xs-12"><hr/></div>
                                      <div class="col-xs-12">
                                          <h4><span class="glyphicon glyphicon-road"></span>&nbsp;How often do you visit us?</h4>
                                          <div class="rad">
                                          <input  type="radio" value="daily" name="visit" multiple="false"/>&nbsp;Daiy<br/>
                                          <input  type="radio" value="weekly"  name="visit" multiple="false"/>&nbsp;Weekly<br/>
                                           <input  type="radio" value="monthly" name="visit" multiple="false"/>&nbsp;Monthly<br/>
                                           <input  type="radio" value="seldom" name="visit" multiple="false"/>&nbsp;Seldom<br/>
                                           <input  type="radio" value="first visit" name="visit" multiple="false"/>&nbsp;First Visit<br/>
                                          </div>
                                          
                                     
                                      </div>
                                     
                                     <div class="col-xs-12"><hr/></div>
                                     <div class="col-xs-10">
                                         <h4><span class="glyphicon glyphicon-certificate"></span>&nbsp;Service Quality</h4> <input id="service" name="service" required="true" type="text" class="rating rating-loading"  data-size="xs"title="">
                                     </div>
                                     <div class="col-xs-12"><hr/></div>
                                      <div class="col-xs-10">
                                          <h4 ><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Menu Variety</h4> <input id="menu" name="menu" required="true" type="text" class="rating rating-loading"  data-size="xs"title="">
                                          </div>
                                     <div class="col-xs-12"><hr/></div>
                                      <div class="col-xs-10">
                                          <h4 ><span class="glyphicon glyphicon-picture"></span>&nbsp;Ambiance</h4> <input id="ambiance" name="ambiance" required="true" type="text" class="rating rating-loading"  data-size="xs"title="">
                                         </div>
                                     <div class="col-xs-12"><hr/></div>
                                      <div class="col-xs-10">
                                          <h4 ><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;Food Quality</h4> <input id="food" name="food" required="true" type="text" class="rating rating-loading" data-size="xs"title="">
                                      </div>
                                    <div class="col-xs-12"><hr/></div>
                                      <div class="col-xs-10">
                                          <h4 ><span class="glyphicon glyphicon-glass"></span>&nbsp;Beverage Quality</h4> <input id="beverage" name="beverage" required="true" type="text" class="rating rating-loading" data-size="xs"title="">
                                      </div>
                                    
                                 </div>
                                       <div class="col-xs-12"><hr/></div>
                                     <div class="col-xs-10">
                                          <h4><span class="glyphicon glyphicon-eye-open"></span>&nbsp;Overall Experience</h4> <input id="overall" name="overall" required="true" type="text" class="rating rating-loading"  data-size="xs"title="">
                                     </div>
                                     <div class="col-xs-12"><hr/></div>
                                     <div class="col-xs-10">
                                               <h4><span class="glyphicon glyphicon-export"></span>&nbsp;What are the chances of referring us to your friends and family?</h4> <input id="refer" name="refer" required="true" type="text" class="rating rating-loading"  data-size="xs"title="">
                                  
                                     
                                      </div>
                                     <div class="col-xs-12"><hr/></div>
                                 <div class="col-xs-10">
                                          <h4><span class="glyphicon glyphicon-edit"></span>&nbsp;How can we do better?</h4>
                                          
                                          <textarea name="better" class="form-control" rows="5"  placeholder="Your suggestions"></textarea>
                                          
                                      
                                 </div>
                                      <div class="col-xs-12"><hr/></div>   
                                     <div class="col-xs-10">
                                         <br/><center>
                                               <input type="checkbox" checked="true" name="offers"/>I would like to subscribe to all your offers.<br/> <br/>
                                         <button   type="submit"   class="btn btn-default btn-lg shift">Submit</button>
                                         
                                         
                                         
                                         
                                         
                               <%--           <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="color:#2d6987">Are you sure to proceed?</h4>
      </div>
      <div class="modal-body">
        <button  type="submit"  class="btn btn-primary">Submit</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
     
    </div>

  </div>
</div>--%>
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         
                                         <br/>
                                         <br/>
                                         </center>
                                     </div>
                                 </div>
                                 </form>
                               
   
      

                             </div>
                         </div>
                                   <br/>
                               <center>
                                   Powered by <img  src="${pageContext.request.contextPath}/resources/images/yourtake.png" width="50" height="25"/>
                               </center>
                </div>
        </div>
    </body>

 </html>
