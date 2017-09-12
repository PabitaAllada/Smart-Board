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
        String stdid,fname,lname,uname,pwd,mobile,email,addr,college;
        int i;
        %>
        <%
        try{
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        mobile=request.getParameter("mobile");
        email=request.getParameter("email");
        addr=request.getParameter("addr");
        college=request.getParameter("college");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
        st=con.createStatement();
        rs=st.executeQuery("select stdid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        stdid="std00"+i;
        
        pst = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?)");
        pst.setString(1,stdid);
        pst.setString(2,fname);
        pst.setString(3,lname);
        pst.setString(4,uname);
        pst.setString(5,pwd);
        pst.setString(6,mobile);
        pst.setString(7,email);
        pst.setString(8,addr);
        pst.setString(9,college);
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
        <jsp:include page="stdReg.jsp"></jsp:include>
    </body>
</html>
