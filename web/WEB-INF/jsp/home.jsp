<%-- 
    Document   : home
    Created on : Jul 19, 2016, 11:32:51 PM
    Author     : MumbaiZone
--%><%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                    <title>Love And Latte</title>
                                    <link href="<c:url value="/resources/images/logo.png" />" rel="shortcut icon">
                                    
                                    <link type="text/css" href="<c:url value="/resources/css/jquery-ui-1.10.4.css" />" rel="stylesheet">
                                   <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />" rel="stylesheet">
            <script async type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" />"></script>
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />" rel="stylesheet">        
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>" type="text/javascript"></script>
            <script type="text/javascript" src="<c:url value="http://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.3.0/bootbox.min.js" />"></script>
                                    <link type="text/css" href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
                                    <script src="<c:url value="/resources/js/home.js" />" type="text/javascript"></script>
                                    
                                    <link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
                                    </script>
                    </head>
	<body>
		<div class="site-wrapper">
                                                <div class="site-wrapper-inner">
                                                        <div class="container">
                                                                <div class="header clearfix">
                                                                        <center>
                                                                                <img id="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" width="100" height="90" class="img-responsive" alt="Generic placeholder thumbnail">
                                                                                        <h3 >Love &amp; Latte</h3>
                                                                                                <hr/>
                                                                        </center>
                                                                </div>
                                                        </div>
                                                        <div class="container box">
                                                                <center>
                                                                        <div class="row placeholders">
                                                                                <div class="col-xs-6 panel">
                                                                                        <div class=" placeholder">
                                                                                                <br/>
                                                                                                <a  href="${pageContext.request.contextPath}/menu">
                                                                                                        <img id="menu-box" src="${pageContext.request.contextPath}/resources/images/menu.png" width="50" height="50" class="img-responsive" alt="Menu">
                                                                                                                <h4  class="text-muted">
                                                                                                                        <b>Menu</b>
                                                                                                                </h4>
                                                                                                                <span class="text-muted">Try these</span>
                                                                                                        </a>
                                                                                                </div>
                                                                                        </div>
                                                                                    <div class="col-xs-6 panel">
                                                                                            <div class=" placeholder">
                                                                                                    <br/>
                                                                                                    <a href="${pageContext.request.contextPath}/feedback">
                                                                                                            <img id="feedback-box" src="${pageContext.request.contextPath}/resources/images/survey.png" width="65" height="65" class="img-responsive" alt="Generic placeholder thumbnail">
                                                                                                                    <h4  class="text-muted">
                                                                                                                            <b>Feedback</b>
                                                                                                                    </h4>
                                                                                                                    <span class="text-muted">Let us know</span>
                                                                                                            </a>
                                                                                                    </div>
                                                                                            </div>
                                                                                            <div class="col-xs-6 panel">
                                                                                                    <div class=" placeholder">
                                                                                                            <br/>
                                                                                                            <a href="${pageContext.request.contextPath}/new">
                                                                                                                    <img id="new-box" src="${pageContext.request.contextPath}/resources/images/new.png" width="100" height="100" class="img-responsive" alt="New">
                                                                                                                            <h4  class="text-muted">
                                                                                                                                    <b>What's New</b>
                                                                                                                            </h4>
                                                                                                                            <span class="text-muted">Know the trend</span>
                                                                                                                    </a>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    <div class="col-xs-6 panel">
                                                                                                            <div class=" placeholder">
                                                                                                                    <br/>
                                                                                                                    <a  href="${pageContext.request.contextPath}/facts">
                                                                                                                            <img id="facts-box" src="${pageContext.request.contextPath}/resources/images/faq-white.png" width="85" height="85" class="img-responsive" alt="Generic placeholder thumbnail">
                                                                                                                                    <h4  class="text-muted">
                                                                                                                                            <b>Fun Facts</b>
                                                                                                                                    </h4>
                                                                                                                                    <span class="text-muted">Learn fun stuff</span>
                                                                                                                            </a>
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                </center>
                                                                                        </div>
                                                        <div class="wrapper">
                                                                <div class="counter col_fourth">
                                                                        <i class="fa fa-code fa-2x"></i>
                                                                        <h2 class="timer count-title" id="count-number" data-to="300" data-speed="12500"></h2>
                                                                        <p class="count-text ">Visits per hour</p>
                                                                </div>
                                                                <div class="counter col_fourth">
                                                                        <i class="fa fa-coffee fa-2x"></i>
                                                                        <h2 class="timer count-title" id="count-number" data-to="17870" data-speed="12500"></h2>
                                                                        <p class="count-text ">Happy clients</p>
                                                                </div>
                                                                <div class="counter col_fourth">
                                                                        <i class="fa fa-lightbulb-o fa-2x"></i>
                                                                        <h2 class="timer count-title" id="count-number" data-to="847" data-speed="12500"></h2>
                                                                        <p class="count-text ">Items</p>
                                                                </div>
                                                                <div class="counter col_fourth end">
                                                                        <i class="fa fa-bug fa-2x"></i>
                                                                        <h2 class="timer count-title" id="count-number" data-to="157" data-speed="12500"></h2>
                                                                        <p class="count-text ">Places</p>
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="container testimonials">
                                                                
                                                                <h4 style="text-align: center">
                                                                        <b>
                                                                                <i>
                                                                                        <u>Testimonials</u>
                                                                                </i>
                                                                        </b>
                                                                </h4>
                                                                <div class="row">
                                                                        <div class="col-md-12">
                                                                                <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                                                                                        <!-- Bottom Carousel Indicators -->
                                                                                        <ol class="carousel-indicators">
                                                                                                <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                                                                                                <li data-target="#quote-carousel" data-slide-to="1"></li>
                                                                                                <li data-target="#quote-carousel" data-slide-to="2"></li>
                                                                                        </ol>
                                                                                        <!-- Carousel Slides / Quotes -->
                                                                                        <div class="carousel-inner">
                                                                                                <!-- Quote 1 -->
                                                                                                <div class="item active">
                                                                                                        <div class="row">
                                                                                                                <div class="col-sm-12">
                                                                                                                        <p>&ldquo;I would advice everyone to visit this coffee shop at least once. Good job Love And Latte.. keep it up&rdquo;</p>
                                                                                                                        <small>
                                                                                                                                <strong>Ashish Manohar</strong>
                                                                                                                        </small>
                                                                                                                </div>
                                                                                                        </div>
                                                                                                </div>
                                                                                                <!-- Quote 2 -->
                                                                                                <div class="item">
                                                                                                        <div class="row">
                                                                                                                <div class="col-sm-12">
                                                                                                                        <p>&ldquo;Awesome ambience. A place I often come!&rdquo;</p>
                                                                                                                        <small>
                                                                                                                                <strong>Anuj Mishra</strong>
                                                                                                                        </small>
                                                                                                                </div>
                                                                                                        </div>
                                                                                                </div>
                                                                                                <!-- Quote 3 -->
                                                                                                <div class="item">
                                                                                                        <div class="row">
                                                                                                                <div class="col-sm-12">
                                                                                                                        <p>&ldquo;Love and latte is the best! :P .&rdquo;</p>
                                                                                                                        <small>
                                                                                                                                <strong>Santosh Iyer</strong>
                                                                                                                        </small>
                                                                                                                </div>
                                                                                                        </div>
                                                                                                </div>
                                                                                        </div>
                                                                                </div>
                                                                        </div>
                                                                </div>
                                                                <br/>
                                                        </div>
                                                                                                                                      <br/>
                               <center>
                                   Powered by <img  src="${pageContext.request.contextPath}/resources/images/yourtake.png" width="50" height="25"/>
                               </center>
                                                </div>
                                        </div>
	</body>
</html>
