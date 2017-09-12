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
        String stdid,fname,lname,uname,pwd,mobile,email,addr;
        %>
        <%
        String stdid=(String)session.getAttribute("stdid");
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        pwd=request.getParameter("pwd");
        mobile=request.getParameter("mobile");
        email=request.getParameter("email");
        addr=request.getParameter("addr");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
        st=con.createStatement();
        pst=con.prepareStatement("update student set fname=?,lname=?,pwd=?,mobile=?,email=?,addr=? where stdid=?");
        pst.setString(1,fname);
        pst.setString(2,lname);
        pst.setString(3,pwd);
        pst.setString(4,mobile);
        pst.setString(5,email);
        pst.setString(6,addr);
        pst.setString(7,stdid);
        pst.execute();
        %>
        <jsp:include page="updateStd.jsp"></jsp:include>
<div style="position: absolute; width: 370px; height: 47px; z-index: 1; left: 128px; top: 309px" id="layer4">
              <font color="#74CC39"><b><font face="Verdana" size="2"><%=fname%> Details are Updated Successfully       	
              </font>    	
              </b>    	</font>
          </div>
    </body>
</html>
