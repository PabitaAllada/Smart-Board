<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
         <%!
        Connection con;
        Statement st1;
        PreparedStatement pst;
        ResultSet rs1;
        String cid,cname;
        %>
        <%
        cid=request.getParameter("cid");   
        cname=request.getParameter("cname");   
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
        st1=con.createStatement();
        pst=con.prepareStatement("delete from college where cid='"+cid+"'");
        pst.execute();
        %>        
        <jsp:include page="deleteCollege.jsp"></jsp:include>
             <div style="position: absolute; width: 556px; height: 22px; z-index: 2; left: 123px; top: 308px" id="layer2">
            <font size=4 color="#00FF00">
                <h2><font size="2" face="Verdana"><%=cname%> Deleted Successfully
</font></h2>
            </font>            
        </div>
    </body>
</html>
