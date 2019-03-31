<%-- 
    Document   : MoreDetails
    Created on : 31-Mar-2019, 14:22:06
    Author     : HP
--%>
<%-- 
    Document   : buyItems
    Created on : 5 Nov, 2012, 12:23:58 PM
    Author     : chirag
--%>

<%@page import="user.user"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>SaiKiran BookStores</title>
        <jsp:useBean class="product.product" id="product" scope="session"></jsp:useBean>

        <%@page import="java.sql.*, database.*" %>
        <link rel="shortcut icon" href="images/logo/ico.ico"/>
        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <link rel="stylesheet" type="text/css" href="css/lightbox.css"  />

        <link rel="stylesheet" type="text/css" href="css/styles.css"/>

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/lightbox.js"></script>
        <script src="js/myScript.js"></script>
        <style type="text/css">
            .shippingAddress {
                background: #EEE; 
                padding: 10px; 
                border: 2px solid #CCC; 
                
        </style>
    </head>
    <body>
        
        
        <%
        if (session.getAttribute("user") == null ){// THen new user, show join now
            %>
            <jsp:include page="includesPage/_joinNow.jsp"></jsp:include>
        <%
        }else {
            %>
            <jsp:include page="includesPage/_logout.jsp"></jsp:include>
        <%
        }
        %>

        <jsp:include page="includesPage/_search_navigationbar.jsp"></jsp:include>
        <jsp:include page="includesPage/_facebookJoin.jsp"></jsp:include>

        <%
    
          <div class="container_16">
             <div class="grid_16" id="whiteBox" style="padding: 10px;">
                 <div class="grid_8">
                     <h1>Add Shop address</h1> <br/>
                     <form method="post" action="MoreDetails">
                         <div class="grid_2">
                             Name of shopkeeper
                         </div>
                         <div class="grid_5">
                             <input type="text" class="name"  name="name" required/>
                         </div>
                         <div class="clear"></div><br/>
                         <div class="grid_2">
                             Mobile No
                         </div>
                         <div class="grid_5">
                             <input type="text" class="mobile" maxlength="10" name="mobile" />
                         </div>
                         <div class="grid_2">
                             Address
                         </div>
                         <div class="grid_5">
                             <textarea class="address"  name="address" required></textarea>    
                         </div>
                         <div class="grid_2">
                             City
                         </div>
                         <div class="grid_5">
                             <input type="text" class="city" name= "city" required/>
                         </div>
                         <div class="clear"></div><br/>
                         <div class="grid_5" >
               <input  type="submit" id="greenBtn" value="Add Details"/>
                        </div>
                    </form>
    </body>
</html>
