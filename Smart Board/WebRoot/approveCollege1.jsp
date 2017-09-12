<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String cid;
            %>
           <%  
            cid=request.getParameter("cid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st=con.createStatement();
            st.executeUpdate("update college set status='Approved' where cid='"+cid+"'");
            %>
             <jsp:include page="approveCollege.jsp"></jsp:include>
        <div style="position: absolute; width: 556px; height: 22px; z-index: 2; left: 123px; top: 308px" id="layer2">
            <font size=4 color="#00FF00">
                <h2><font size="2" face="Verdana">Status Approved for <%=cid%></font></h2>
            </font>            
        </div>
    </body>
</html>