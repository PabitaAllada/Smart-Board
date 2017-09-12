<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>
        <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 310px; height: 55px; z-index: 1; left: 225px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="orange">Approve Faculty</font></b></div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<a href="adminLogin.jsp"><b>
					<font face="Verdana" size="1" color="#000000">Back</font></b></a></div>    
                 
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String cid,cname,status;
            %>
            <%  
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st=con.createStatement();
            rs=st.executeQuery("select * from college where status='Not Approved'");
            %>
            <div style="position: absolute; width: 599px; height: 54px; z-index: 1; left: 250px; top: 129px" id="layer9">
            <table width="300px" border="1" bordercolor="#D8D8D8" id="table1">
                <tr>
                    <td width="101" align="center">
					<b><font face="Verdana" size="2">Faculty ID</font></b></td>
                    <td width="391" align="center">
					<b><font face="Verdana" size="2">Faculty Name</font></b></td>
                    <td align="center">
					<b>
					<font face="Verdana" size="2">Status</font></b></td>
                </tr>
            <%
            while(rs.next())
            {
                cid=rs.getString(1);
                cname=rs.getString(2);
                status=rs.getString(7);            
            %>
            <tr>
                <td width="101" align="center">
			<font color="#FFFFFF" face="Verdana" size="2"><%=cid%></font></td>
                <td width="391" align="center">
			<font color="#FFFFFF" face="Verdana" size="2"><%=cname%></font></td>
		<td align="center">
                    <a href="approveCollege1.jsp?cid=<%=cid%>">
                        <font color="#FFFFFF" face="Verdana" size="2">Approve </font>
                    </a>
                </td>
                </tr>
            <%
            }
            %>
            </table>
        	
&nbsp;</div>
            	<p>&nbsp;</div>
    </body>
</html>
