
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*, database.*" %>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>SaiKiran BookStores</title>
        <link rel="shortcut icon" href="images/logo/ico.ico"/>

        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/styles.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <link rel="stylesheet" type="text/css" href="css/lightbox.css"  />

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/lightbox.js"></script>

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
            String id = request.getParameter("id");
            out.print(id);
            DB_Conn c = new DB_Conn();
            Connection con = c.getConnection();

            Statement st = con.createStatement();


            String getProductQuery2 = ("SELECT city FROM  `administrators` where admin_id=1");
            ResultSet rs = st.executeQuery(getProductQuery2);
         
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               
           </TR>
           <TR>
               <TD> <%= rs.getString(1) %>
               
                          </TR>
       </TABLE>
    </BODY>
</HTML>

