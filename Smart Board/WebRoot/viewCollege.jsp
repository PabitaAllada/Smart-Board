<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>
        
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="blue">View 
					Faculty</font></b></div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<b><a href="deleteCollege.jsp">
					<font face="Verdana" size="1" color="black">Back</font></a></b></div>
             <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String cid,cname,uname,pwd,addr,phn;
            %>   
            <div style="position: absolute; width: 434px; height: 112px; z-index: 2; left: 289px; top: 130px" id="layer2">
                <%
                cid=request.getParameter("cid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
                st=con.createStatement();
                rs=st.executeQuery("select * from college where cid='"+cid+"'");
                if(rs.next())
                {
                cname=rs.getString(2);
                uname=rs.getString(3);
                pwd=rs.getString(4);
	        addr=rs.getString(5);
                phn=rs.getString(6);
                %>
                <table border="0" width="101%" id="table1">
                        <tr>
                            <td width="199"><b>
							<font face="Verdana" size="2" color="#FFFFFF">
							College Name</font></b></td>
                            <td><font color="#FFFFFF" face="Verdana" size="2"><%=cname%></font></td>
                        </tr>
                        <tr>
                            <td width="199" height="26"><b>
							<font face="Verdana" size="2" color="#FFFFFF">User Name</font></b></td>
                            <td height="26">
							<font color="#FFFFFF" face="Verdana" size="2"><%=uname%></font></td>
                        </tr>
                        <tr>
                            <td width="199" height="26"><b>
							<font face="Verdana" size="2" color="#FFFFFF">Password</font></b></td>
                            <td height="26">
							<font color="#FFFFFF" face="Verdana" size="2"><%=pwd%></font></td>
                        </tr>
                        <tr>
                            <td width="199" height="26"><b>
							<font face="Verdana" size="2" color="#FFFFFF">
							College Postal Address</font></b></td>
                            <td height="26">
							<font color="#FFFFFF" face="Verdana" size="2"><%=addr%></font></td>
                        </tr>
                        <tr>
                            <td width="199"><b>
							<font face="Verdana" size="2" color="#FFFFFF">
							College Phone Number</font></b></td>
                            <td><font color="#FFFFFF" face="Verdana" size="2"><%=phn%></font></td>
                        </tr>
                        </table>
                <% }  %>
            </div>
                
            	<p>&nbsp;</div>
        
    </body>
</html>
