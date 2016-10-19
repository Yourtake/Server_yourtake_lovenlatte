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
            <link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
            <script async type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" />"></script>
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />" rel="stylesheet">        
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>" type="text/javascript"></script>
            <script type="text/javascript" src="<c:url value="//cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.3.0/bootbox.min.js" />"></script>
             <link type="text/css" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/css/bootstrap3/bootstrap-switch.min.css" />" rel="stylesheet">        
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/js/bootstrap-switch.min.js"/>" type="text/javascript"></script>
        
            <link type="text/css" href="<c:url value="/resources/css/new.css" />" rel="stylesheet">   
            
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
                                 <div class="container">
                             <div class="row">
                                 <center>
                                 <h2><b>${message} for you feedback</b></h2>
                                 </center>
                             
                                 
    
           </div>

                             </div>
                                   <br/>
                               <center>
                                   Powered by <img  src="${pageContext.request.contextPath}/resources/images/yourtake.png" width="50" height="25"/>
                               </center>
                         </div>
                </div>
        </div>
    </body>

 </html>
