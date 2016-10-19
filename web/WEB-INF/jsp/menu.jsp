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
            <title>Love And Latte - Menu</title>
            
            <link href="<c:url value="/resources/images/logo.png" />" rel="shortcut icon">
            <link type="text/css" href="<c:url value="/resources/css/jquery-ui-1.10.4.css" />" rel="stylesheet">
             <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />" rel="stylesheet">
            <script async type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" />"></script>
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />" rel="stylesheet">        
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>" type="text/javascript"></script>
            <script type="text/javascript" src="<c:url value="http://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.3.0/bootbox.min.js" />"></script>
            
            <link type="text/css" href="<c:url value="/resources/css/menu.css" />" rel="stylesheet">   
            <link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
            
    </head>
       
    <body>
          <div class="site-wrapper">
            <div class="site-wrapper-inner">
                       <div class="container">
                           <div class="header clearfix">
                               <center>
                                        <img id="logo" src="${pageContext.request.contextPath}/resources/images/logo.png" width="100" height="100" class="img-responsive" alt="Generic placeholder thumbnail">
                                 <h3 >Love &amp; Latte</h3><hr/>
                               </center>
                           </div>
                       </div> 
                               <div class="container">
                               <div class="row">
                                 <div class="col-xs-12">
                                     <a style="color:white" href="${pageContext.request.contextPath}"> <h3 style="text-align: left"><span class="glyphicon glyphicon-circle-arrow-left"></span>&nbsp;Back</b></h3></a>
                                 </div>
                              </div>
                               </div>
                       
	
<div class="container" style="background-color: rgba(100  ,50,50,0.7);border-radius: 15px">

    <h2 style="text-align: center" class="entry-title"><u>Menu</u></h2>
		<div class="">


                                                                        <div  class="">
                                                                        <h3><b>Hot Coffee</b></h3>

                                                                        <table  class="table table-bordered ">
                                                                        <tr>
                                                                        <td  class="item-name">Espresso</td>
                                                                        <td class="item-price">65</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Espresso Macchiato</td>
                                                                        <td class="item-price">75</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Americano</td>
                                                                        <td class="item-price">80</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Cappuccino</td>
                                                                        <td class="item-price">90</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Café Latte</td>
                                                                        <td class="item-price">110</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Café Mocha</td>
                                                                        <td class="item-price">120</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Irish Coffee</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Mint Mocha</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Spiced Mocha</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table>
                                                                        </div>

                                                                        <div class="">
                                                                        <h3><b>Filter Coffee</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">South Indian Coffee</td>
                                                                        <td class="item-price">90</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table>
                                                                        </div>

                                                                        <div class="">
                                                                        <h3><b>Special Brew</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        
                                                                        <tr>
                                                                        <td class="item-name">Espresso</td>
                                                                        <td class="item-price">95</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Cappuccino </td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Latte</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>


                                                                        <div class="">
                                                                        <h3><b>Speciality Latte</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Butter Rum Latte</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Cinnamon Latte</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Choco Ginger Latte</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Caramel Banana Latte</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Cookie Dough Mint Latte</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Cold Coffee</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Caramel Frappe </td>
                                                                        <td class="item-price">160</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Cinnamon Frappe </td>
                                                                        <td class="item-price">160</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Hazelnut Blast </td>
                                                                        <td class="item-price">160</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Coffee Tiramisu </td>
                                                                        <td class="item-price">160</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Mocha Frappe</td>
                                                                        <td class="item-price">160</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Vintage Cold </td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Bronze Frost</td>
                                                                        <td class="item-price">180</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>On The Rocks </b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Iced Espresso Shake</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Iced Vanilla Latte</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Iced Caramel Cappuccino</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Iced Hazelnut Mocha</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Hot Chocolate Drinks</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Dark </td>
                                                                        <td class="item-price">125</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Tiramisu</td>
                                                                        <td class="item-price">135</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Smoothies</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Banana Chocolate</td>
                                                                        <td class="item-price">180</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Strawberry</td>
                                                                        <td class="item-price">180</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Blueberry</td>
                                                                        <td class="item-price">180</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>
                                                                        <div class="">
                                                                        <h3><b>Milkshakes</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Oreo</td>
                                                                        <td class="item-price">180</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Kitkat</td>
                                                                        <td class="item-price">190</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Ferrero Rocher </td>
                                                                        <td class="item-price">200</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>
                                                                        <div class="">
                                                                        <h3><b>Tea</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Assam</td>
                                                                        <td class="item-price">80</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Darjeeling</td>
                                                                        <td class="item-price">80</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Earl Grey</td>
                                                                        <td class="item-price">85</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Masala Chai</td>
                                                                        <td class="item-price">85</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Jasmine Blossom</td>
                                                                        <td class="item-price">90</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Green Sencha</td>
                                                                        <td class="item-price">100</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Chamomile</td>
                                                                        <td class="item-price">100</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Peppermint</td>
                                                                        <td class="item-price">100</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Mango &amp; Strawberry</td>
                                                                        <td class="item-price">110</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Tropical Delight</td>
                                                                        <td class="item-price">110</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>
                                                                        <div class="">
                                                                        <h3><b>Iced Tea</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Lemon</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Peach &#038; Passion </td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>
                                                                        <div class="">
                                                                        <h3><b>Slush</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Passion Fruit </td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Blood Orange </td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Ocean Blue </td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>
                                                                        <div class="">
                                                                        <h3><b>Mojito</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Passion Fruit </td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Green Apple</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Lemon</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Add On </b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Espresso Shot </td>
                                                                        <td class="item-price">30</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Chocolate Sauce  </td>
                                                                        <td class="item-price">30</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Whipped Cream </td>
                                                                        <td class="item-price">30</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Syrup</td>
                                                                        <td class="item-price">30</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b> Sandwich</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Paneer Tikka</td>
                                                                        <td class="item-price">135</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">L&#038;L Open Face </td>
                                                                        <td class="item-price">135</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name chilli">L&#038;L Jalapeno Popper Cheese </td>
                                                                        <td class="item-price">135</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Mexicano</td>
                                                                        <td class="item-price">135</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name chilli">Spice Surprise</td>
                                                                        <td class="item-price">135</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name chilli">Dynamite Burger</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">L&#038;L Sub</td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Spicy Scrambled Egg</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Chicken Tikka  </td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Chicken Salad</td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Barbeque Chicken </td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name chilli-red-tag">Dynamite Chicken Burger</td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">L&#038;L Chicken Sub</td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b> Panini</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Spinach &#038; Corn</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Mozzarella And Pesto </td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Red Chilli Chicken  </td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Pizza</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Garden Veg Pizza</td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">The Veg Feast	</td>
                                                                        <td class="item-price">150</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Barbeque Cottage Cheese</td>
                                                                        <td class="item-price">160</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Tandoori Chicken</td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Barbeque Chicken</td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Hummus With Pita Bread</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Nachos Cheese Affair</td>
                                                                        <td class="item-price">180</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b> Wraps &#038; Roll</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Achari Paneer</td>
                                                                        <td class="item-price">130</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Pungent Maxican Paneer</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Smoky Cottage Cheese</td>
                                                                        <td class="item-price">140</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Chicken Ham &#038; Cheese</td>
                                                                        <td class="item-price">145</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Murg Makhani</td>
                                                                        <td class="item-price">145</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Arabic Mexican Feast</td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Pasta</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Arrabbiata</td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Alfredo Fusilli</td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Pasta Rosa</td>
                                                                        <td class="item-price">170</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Garlicky Chicken</td>
                                                                        <td class="item-price">185</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Dessert</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name red-tag">Lemon Bar</td>
                                                                        <td class="item-price">45</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Mini Bnie</td>
                                                                        <td class="item-price">70</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Pineapple Mousse</td>
                                                                        <td class="item-price">95</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Chocolate Pyramid</td>
                                                                        <td class="item-price">110</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name red-tag">Warm Gooey Chocolate Walnut Bnie<br />
                                                                                    <span class="item-">(Must Have With Vanilla Ice Creame)</span>
                                                                                    </td>
                                                                        <td class="item-price">115</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Double Choco Mousse Pastry</td>
                                                                        <td class="item-price">125</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Chocolate Ganache</td>
                                                                        <td class="item-price">125</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Red Velvet Pastry</td>
                                                                        <td class="item-price">135</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Cake Jar</td>
                                                                        <td class="item-price">145</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Cheese Cake</td>
                                                                        <td class="item-price">160</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Waffle Delight</td>
                                                                        <td class="item-price">250</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                       
                                                                        <tr>
                                                                        <td class="item-name">Ice Cream</td>
                                                                        <td class="item-price">35</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        
                                                                        </table></div>

                                                                        <div class="">
                                                                        <h3><b>Cookies &#038; Muffins</b></h3>
                                                                        <table class="table table-bordered " width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                        <td class="item-name">Chocolate Chip Cookie</td>
                                                                        <td class="item-price">40</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Oatmeal And Raisin Cookie</td>
                                                                        <td class="item-price">40</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Oatmeal Nutella Cookie</td>
                                                                        <td class="item-price">60</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Date &#038; Walnut Muffin</td>
                                                                        <td class="item-price">85</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Red Velvet Muffin</td>
                                                                        <td class="item-price">85</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        <tr>
                                                                        <td class="item-name">Blueberry Muffin.</td>
                                                                        <td class="item-price">90</td>
                                                                        <td class="cart">+ 0 -</td>
                                                                        </tr>
                                                                        </table></div>


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
