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
                String reqid,cid,resp;
        %>
        <%
                reqid=request.getParameter("reqid");
                resp=request.getParameter("resp");
                out.println("resp : "+resp);
                cid=(String)session.getAttribute("cid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");          
                st=con.createStatement();
                pst=con.prepareStatement("update request set response=?,resdate=to_date(sysdate) where reqid='"+reqid+"'");   
                pst.setString(1,resp);
                pst.execute();
        %>
        <div style="position: absolute; width: 556px; height: 22px; z-index: 2; left: 123px; top: 308px" id="layer2">
            <font size=4 color="#00FF00">
                <h2><font size="2" face="Verdana">Response has been sent successfully</font></h2>
            </font>  
        </div>
    <jsp:include page="sendResponse.jsp"></jsp:include>
    </body>
</html>
