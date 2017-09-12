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
        String cid,cname,uname,pwd,addr,phn;
        %>
        <%
        cid=request.getParameter("cid");
        cname=request.getParameter("cname");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        addr=request.getParameter("addr");
        phn=request.getParameter("phn");
        Class.forName("oracle.jdbc.driver.OracleDriver");
       con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
        st=con.createStatement();
        pst=con.prepareStatement("update college set pwd=?,addr=?,phn=? where cid=?");
        pst.setString(1,pwd);
        pst.setString(2,addr);
        pst.setString(3,phn);
        pst.setString(4,cid);
        pst.execute();
        %>
        <jsp:include page="collegeLogin.jsp"></jsp:include>
<div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 128px; top: 309px" id="layer4">
              <font color="#74CC39"><b><font face="Verdana" size="2"><%=cname%> Details are Updated Successfully       	
              </font>    	
              </b>    	</font>
          </div>
    </body>
</html>
