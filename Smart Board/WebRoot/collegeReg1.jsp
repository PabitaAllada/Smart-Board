<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body background="images/back_all2.gif" style="background-attachment: fixed">
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String cid,cname,uname,pwd,addr,phn,status;
        int i;
        %>
        <%
        try{
        cname=request.getParameter("cname");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        addr=request.getParameter("addr");
        phn=request.getParameter("phn");
        status="Not Approved";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
        st=con.createStatement();
        rs=st.executeQuery("select cid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        cid="c00"+i;
        
        pst = con.prepareStatement("insert into college values(?,?,?,?,?,?,?)");
        pst.setString(1,cid);
        pst.setString(2,cname);
        pst.setString(3,uname);
        pst.setString(4,pwd);
        pst.setString(5,addr);
        pst.setString(6,phn);
        pst.setString(7,status);
        pst.execute();
        %>
        <div style="position: absolute; width: 556px; height: 22px; z-index: 2; left: 123px; top: 308px" id="layer2">
            <font size=4 color="#00FF00">
                <h2><font size="2" face="Verdana">You have registered successfully</font></h2>
            </font>            
        </div>
    <%
    }
    catch(Exception e)
    {
    %>  
        <div style="position: absolute; width: 556px; height: 29px; z-index: 2; left: 125px; top: 308px" id="layer1">
           <font size="6" color="#FF0000"> <%
              out.print(e.getMessage());
            %></font><b><font size="2" color="#FF0000" face="Verdana">
            Error in Registration Page
        </font>
        	</b>
        </div>        
    <%
    }
    %>    
        <jsp:include page="collegeReg.jsp"></jsp:include>
    </body>
</html>
