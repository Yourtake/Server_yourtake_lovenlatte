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
            <title>Love And Latte - Fun Facts</title>
            
            <link href="<c:url value="/resources/images/zapang.jpg" />" rel="shortcut icon">
            <link type="text/css" href="<c:url value="/resources/css/jquery-ui-1.10.4.css" />" rel="stylesheet">
              <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />" rel="stylesheet">
            <script async type="text/javascript" src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" />"></script>
            <link type="text/css" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />" rel="stylesheet">        
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>" type="text/javascript"></script>
            <script type="text/javascript" src="<c:url value="http://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.3.0/bootbox.min.js" />"></script>
            
            <link type="text/css" href="<c:url value="/resources/css/facts.css" />" rel="stylesheet">   
            <link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
            
    </head>
       
    <body>
          <div class="site-wrapper">
            <div class="site-wrapper-inner">
                       <div class="container">
                           <div class="header clearfix">
                               <center>
                                        <img id="logo"  src="${pageContext.request.contextPath}/resources/images/logo.png" width="100" height="100" class="img-responsive" alt="Generic placeholder thumbnail">
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
                                     <center>
                                         <h3><u>Amazing facts about coffee</u></h3>
                                     </center>
                         <br/>               <br/>
                                     <h4><b>1. Shepherds discovered coffee in Ethiopia circa 800 A.D.</b></h4>

<p>Legend has it that 9th century goat herders noticed the effect caffeine had on their goats, who appeared to "dance" after eating coffee berries. A local monk then made a drink with coffee berries and found that it kept him awake at night, thus the original cup of coffee was born.
</p>
   <br/>   <br/>
<h4><b>2. Coffee is the second most traded commodity on earth.</b></h4>

<p>According to the Global Exchange, there are approximately 25 million farmers in over 50 countries involved in producing coffee. The number one commodity? Oil.
</p>
<br/>   <br/>
<h4><b>3. In Italian espresso means "when something is forced out."</b></h4>

<p>This refers to the way espresso is made — forcing boiling water through pressed coffee grounds. And, although espresso has more caffeine per volume than coffee, because it's consumed in smaller quantities, it actually has about a third of the amount of caffeine as a regular cup of coffee.
</p>
<br/>   <br/>
<h4><b>4. Coffee was the first food to be freeze-dried.</b></h4>

<p>The process of freeze drying — when fresh foods are placed in a dryer where temperatures drop to negative 40 degrees F — first started during World War II to preserve foods.
</p>
<br/>   <br/>
<h4><b>5. There are two types of coffee beans: Arabica and Robusta.</b></h4>

<p>Seventy percent of coffee beans are Arabica. Although less popular, Robusta is slightly more bitter and has twice as much caffeine.
</p><br/>   <br/>
<h4><b>6. Coffee is actually a fruit.</b></h4>

<p>Coffee beans as we know them are actually the pits of a cherry-like berry that are grown on bushes. Even though coffee is actually a seed, it's called a bean because of its resemblance to actual beans.
</p><br/>   <br/>
<h4><b>7. The world's most expensive coffee is $600 a pound.</b></h4>

<p>And it comes from the feces of a Sumatran wild cat. The animal — called a Luwak — is unable to digest coffee beans. In the process of digesting the beans, they are fermented in the stomach. When the beans are excreted, they produce a smooth, chocolaty coffee.
</p><br/>   <br/>
<h4><b>8. The majority of coffee is produced in Brazil.</b></h4>

<p>Brazil produces 40% of the world's coffee, which is twice as much as 2nd and 3rd place holders, Colombia and Vietnam.
</p><br/>   <br/>
<h4><b>9. Hawaii is the only state in the U.S. that commercially grows coffee.</b></h4>

<p>Kona coffee is the United States' gift to the coffee world. Because coffee grows best in climates along the equator, Hawaii's weather is optimal for harvesting coffee beans.
</p>                               </div>
                                   <br/>
                               <center>
                                   Powered by <img  src="${pageContext.request.contextPath}/resources/images/yourtake.png" width="50" height="25"/>
                               </center>
                </div>
        </div>
    </body>

 </html>
