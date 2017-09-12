<%-- 
    Document   : sample2
    Created on : Dec 22, 2010, 10:23:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="java.sql.*" %>

<htmL>
    <head>

        <script>

            function getDetails()

            {

                rs.next()

            }

        </script>
        </head>
    <%!     Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
    %>
    <%

                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");

                Statement st = con.createStatement();

                st.execute("select * from student");

                ResultSet rs;

                rs = st.getResultSet();

                rs.next();

    %>

    <body>


        <form method="post">

            Website:<input type="text" value="<%=rs.getString(1)%>"><br>
            <a rel="nofollow" href="http://www.daniweb.com/techtalkforums/<input" target="_blank"></a>

            Url:<input type="text" value="<%=rs.getString(2)%>"><br>

            Category: <input type="text" value="<%=rs.getString(3)%>"><br>

            Description: <input type="text" value="<%=rs.getString(4)%>"><br>

            Search Engine-><br>

            Yahoo: <input type="text" value="<%=rs.getString(5)%>"><br>

            Google: <input type="text" value="<%=rs.getString(6)%>"><br>

            Altavista: <input type="text" value="<%=rs.getString(7)%>"><br>

            <input type="button" value="Next" onClick="getDetails()">

        </form>

    </body>

</html>