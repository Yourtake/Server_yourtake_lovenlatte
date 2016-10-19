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
            <title>Home</title>
            
               <link type="text/css" href="<c:url value="/resources/css/jquery-ui-1.10.4.css" />" rel="stylesheet">
            
             <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />" rel="stylesheet">
          <script async type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" />"></script>
            
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />" rel="stylesheet">            
            
         
             <script  type="text/javascript" src="<c:url value="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>"></script>
          
            <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
            
            
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
            
           <link type="text/css" href="<c:url value="/resources/css/admingraph.css" />" rel="stylesheet">
           
            
    </head>
    <body>
        <%--<tiles:insertAttribute name="navigation"/>
        <br/>--%>
    

  
       <tiles:insertAttribute name="navigation"/>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2>Past 7 days performance</h2>
            <h3>${subject}</h3>
                   <a style="color:black" href="${pageContext.request.contextPath}/admin"> <h3 style="text-align: left"><span class="glyphicon glyphicon-circle-arrow-left"></span>&nbsp;Back</h3></a>
                               
            <c:if test="${t6 eq 'NaN'}">
                <c:set var="t6"  value="0"/>
        </c:if>
            <p style="display:none"  id="b1">${t6}</p>
            <c:if test="${t5 eq 'NaN'}">
                <c:set var="t5"  value="0"/>
        </c:if>
            <p  style="display:none"  id="b2">${t5}</p>
            <c:if test="${t4 eq 'NaN'}">
                <c:set var="t4"  value="0"/>
        </c:if>
            <p  style="display:none"  id="b3">${t4}</p>
            <c:if test="${t3 eq 'NaN'}">
                <c:set var="t3"  value="0"/>
        </c:if>
            <p  style="display:none"  id="b4">${t3}</p>
            <c:if test="${t2 eq 'NaN'}">
                <c:set var="t2"  value="0"/>
        </c:if>
            <p style="display:none"   id="b5">${t2}</p>
            <c:if test="${t1 eq 'NaN'}">
                <c:set var="t1"  value="0"/>
        </c:if>
            <p style="display:none"   id="b6">${t1}</p>
            <c:if test="${t0 eq 'NaN'}">
                <c:set var="t0"  value="0"/>
        </c:if>
            <p style="display:none"   id="b7">${t0}</p>
            
<div class="wrapper">
  <canvas id='c'></canvas>
  <div class="label">text</div>
</div>
          
        </div>
      </div>
    </div>

  
                                    <script src="<c:url value="/resources/js/admingraph.js" />" type="text/javascript"></script>
    </body>
</html>
