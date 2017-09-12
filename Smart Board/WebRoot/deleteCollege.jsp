<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <script language="JavaScript">
        function confirmDelete(delUrl) 
        {
          if (confirm("Are you sure you want to delete"))
          {
            document.location = delUrl;
          }
        }
        </script>

    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>
        
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 339px; height: 55px; z-index: 1; left: 224px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="lsjdl">Faculty</font></b></div>                
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String cid,cname;
            %>
            <%  
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st=con.createStatement();
            rs=st.executeQuery("select * from college");
            %>
            	<div style="position: absolute; width: 300px; height: 54px; z-index: 1; left: 250px; top: 119px" id="layer7">
            <table width="250" border="1" bordercolor="#D8D8D8" id="table1">
                <tr>
                    <td width="101" align="center">
					<b><font face="Verdana" size="2">Faculty ID</font></b></td>
                    <td width="391" align="center">
					<b><font face="Verdana" size="2">Faculty Name</font></b></td>
                    <td align="center">
					<b>
					<font face="Verdana" size="2">Action</font></b></td>
                </tr>
            <%
            while(rs.next())
            {
                cid=rs.getString(1);
                cname=rs.getString(2);
            %>
            <tr>
                <td width="101" align="center">
				<font color="#FFFFFF" face="Verdana" size="2"><%=cid%></font></td>
                <td width="391" align="center">
				<font color="#FFFFFF" face="Verdana" size="2"><%=cname%></font></td>                
                <td align="center">
                        <b>
                        <a href="viewCollege.jsp?cid=<%=cid%>&cname=<%=cname%>">
						<font face="Trebuchet MS" size="2" color="#FFFFFF">View</font></a><font color="#FFFFFF">/</font><font color="#FFFFFF" size="2">
						</font><font color="#797979" size="2">
                         <a href="javascript:confirmDelete('deleteCollege1.jsp?cid=<%=cid%>&cname=<%=cname%>')">
						<font face="Trebuchet MS" size="2" color="#FFFFFF">Delete</font></a></font><font color="#FFFFFF" size="2">
                    	</b>
                    </td>
                </tr>
            <%
            }
            %>
            </table>
        	
&nbsp;</div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<a href="adminLogin.jsp"><b>
					<font face="Verdana" size="1" color="#000000">Back</font></b></a></div>    
                 
            	<p>&nbsp;</div>
        
    </body>
</html>
