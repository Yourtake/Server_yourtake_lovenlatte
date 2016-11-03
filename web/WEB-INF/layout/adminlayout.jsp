<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Love & Latte Admin</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/admin/">Dashboard</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/settings">Settings</a></li>
            
            <li><a href="${pageContext.request.contextPath}/logout">Log out</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

  <div class="container-fluid">
      <div class="row">
        
<div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="${pageContext.request.contextPath}/admin">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="${pageContext.request.contextPath}/admin/hr">Employees</a></li>
          </ul>
         
        </div>
















<%--

<center>
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <h2><a href="${pageContext.request.contextPath}/admin" >
                <img   src="${pageContext.request.contextPath}/resources/images/logo.png" height="200" width="200" alt="Jubination">
                            </a></h2>

        <h3>${admin.name}, ${admin.work}</h3>
        <br/>
        <br/>
        
        <a class="btn btn-small btn-default" type="button" href="${pageContext.request.contextPath}/admin" >Home &nbsp; <span class="glyphicon glyphicon-home">&nbsp;</span> </a>
       <a class="btn btn-small btn-default" type="button" href="${pageContext.request.contextPath}/admin/mail" >Mail &nbsp; <span class="glyphicon glyphicon-envelope">&nbsp;</span></a>
         <c:if test="${admin.power<3||admin.work=='HR'}">  
            <a class="btn btn-small btn-default" type="button" href="${pageContext.request.contextPath}/admin/hr" >Employees &nbsp; <span class="glyphicon glyphicon-user">&nbsp;</span></a>
         <%--   <a class="btn btn-small btn-default" href="${pageContext.request.contextPath}/admin/career" >Careers &nbsp; <span class="glyphicon glyphicon-briefcase">&nbsp;</span></a>
         --%>
     <%--    </c:if>  
   
        <a class="btn btn-small btn-default" href="${pageContext.request.contextPath}/admin/settings" >Settings &nbsp; <span class="glyphicon glyphicon-cog">&nbsp;</span></a>
      
        <a class="btn btn-small btn-danger" href="${pageContext.request.contextPath}/logout" >Log out &nbsp; <span class="glyphicon glyphicon-log-out">&nbsp;</span></a>


</center--%>