<%-- 
    Document   : adminlogin
    Created on : 22 Sep, 2014, 9:58:51 PM
    Author     : Welcome
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="description" content="">
            <meta name="author" content="Souvik Das">
            <title>Mail</title>
            
               <link type="text/css" href="<c:url value="/resources/css/jquery-ui-1.10.4.css" />" rel="stylesheet">
            
             <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />" rel="stylesheet">
          <script async type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" />"></script>
            
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />" rel="stylesheet">            
            
         
             <script  type="text/javascript" src="<c:url value="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>"></script>
          
            <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
            
              <script async type="text/javascript" src="<c:url value="/resources/js/adminmail.js" />"></script>
          
            <script async type="text/javascript" src="<c:url value="//cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.3.0/bootbox.min.js" />"></script>
              <link type="text/css" href="<c:url value="/resources/css/dashboard.css" />" rel="stylesheet">
                                    <script src="<c:url value="/resources/js/dashboard.js" />" type="text/javascript"></script>
            <%--
           
           <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
           <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.js"></script>
           <link type="text/css" rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.css">
            --%>
            
           
           
           <%--
            <script type="text/javascript" src="<c:url value="/resources/js/doc.js" />"></script> 
            <script type="text/javascript" src="<c:url value="/resources/js/respond.js" />"></script>
                 --%>
            
           
            
    </head>
    <body>
       <tiles:insertAttribute name="navigation"/>
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
           <div class="col-sm-2">
       <br/>
   <a class="btn btn-info btn-mini"  href="${pageContext.request.contextPath}/admin/mail">Inbox</a>
   <br/><br/>
   <a class="btn btn-default btn-mini" href="${pageContext.request.contextPath}/admin/mail/sent">Sent</a>
           </div>
           <div class="col-sm-5">
                <br/>
               <br/>
                <c:if test="${(empty mails)}"> 
               <p>No emails yet</p>
                </c:if>
                <c:if test="${(not empty mails)}">
                 <c:forEach items="${mails}" var="entity">
                     <div class="row well span3" >
                        <c:if test="${not empty entity.sender.username}"/>
                        <h4>From : <c:out value="${entity.sender.name}" />(<c:out value="${entity.sender.username}" />)</h4><br/>
                          <c:if test="${not empty entity.subject}"/>
                          <h4>Subject : <c:out value="${entity.subject}" /></h4><br/>
                          <c:if test="${not empty entity.body}"/>
                          <c:out value="${entity.body}" /></h5>
                         
                     </div>
                 </c:forEach>
                
                </c:if>
               
               
           </div>
           
           
           <div class="col-sm-5">
               <br/>
               <br/>
            <%--   <a id="compose-link" href="#compose">Compose Mail</a>--%>
               <div id="compose" class="form-group" >
                   <form action="${pageContext.request.contextPath}/admin/send/mail" method="post">
  <label for="comment">Compose Mail</label>
  <br/>
  <input name="receiver" type="text" class="form-control" id="receiver" placeholder="Email Id" required="true">
  <br/>
  <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject" required="true">
  <br/>
  <textarea name="comment" class="form-control" rows="5" placeholder="Type your message here..." id="comment"></textarea>
     <button type="submit" class="btn btn-lg btn-info" id="button-submit">Send</button>
                   </form>                       
</div>
               
                   <center>${message}</center>
       </div>
</div>
          </div>
       </div>
    </body>
</html>
