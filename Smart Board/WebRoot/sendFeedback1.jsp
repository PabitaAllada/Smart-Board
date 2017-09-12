<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>        
            <%!
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            String utype,uname,feedback;
            %>
            <%
            utype=(String)session.getAttribute("utype");
	        uname=(String)session.getAttribute("uname");
            feedback=request.getParameter("feedback");
            out.println("utype : "+utype);
            out.println("uname : "+uname);
            out.println("feedback : "+feedback);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            pst=con.prepareStatement("insert into feedback values(?,?,?)");
            pst.setString(1,utype);
            pst.setString(2,uname);
            pst.setString(3,feedback);
            pst.execute();
            %>
        <div style="position: absolute; width: 556px; height: 22px; z-index: 2; left: 123px; top: 308px" id="layer2">
            <font size=4 color="#00FF00">
                <h2><font size="2" face="Verdana">Feedback Submitted successfully</font></h2>
            </font>  
        </div>
            <jsp:include page="sendFeedback.jsp"></jsp:include>
    </body>
</html>
