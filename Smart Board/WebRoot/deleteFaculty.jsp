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
        String fid,fname;
        %>
        <%
        fid=request.getParameter("fid");   
        fname=request.getParameter("fname");        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
        st1=con.createStatement();
        pst=con.prepareStatement("delete from faculty where fid='"+fid+"'");
        pst.execute();
        %>        
        <jsp:include page="facToUpdate.jsp"></jsp:include>
        
          <div style="position: absolute; width: 300px; height: 47px; z-index: 1; left: 128px; top: 309px" id="layer4">
              <font color="#74CC39"><b><%=fname%><font face="Verdana" size="2"> Deleted Successfully    	
              </font>    	
              </b>    	</font>
          </div>
    </body>
</html>
