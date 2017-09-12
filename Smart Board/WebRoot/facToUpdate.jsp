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
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="white">Faculty 
					List</font></b></div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<b><a href="facultyMgmt.jsp">
					<font face="Verdana" size="1" color="black">Back</font></a></b></div>
                
     <%!
            Connection con;
            Statement st;
            ResultSet rs;
            String cid,fid,fname;
     %>
     <%
            cid=(String)session.getAttribute("cid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st=con.createStatement();
            rs=st.executeQuery("select * from faculty where cid='"+cid+"'");  
     %>
        <div style="position: absolute; width: 455px; height: 100px; z-index: 1; left: 153px; top: 115px" id="layer3">
            <table border="1" width="101%" id="table1" bordercolor="#797979">
                <tr>
                    <td>
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2" color="#E4DB6B">Faculty ID</font></b></td>
                    <td width="235">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2" color="#E4DB6B">Faculty Name</font></b></td>
                    <td width="107">
                        <p align="center">
                    <b>
                    <font face="Trebuchet MS" size="2" color="#E4DB6B">Action</font></b></td>
                </tr>
                <%
                while(rs.next())
                {
                fid=rs.getString(2);
                fname=rs.getString(3);
                %>
                <tr>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#FFFFFF"><b><%=fid%></b></font><b><font color="#FFFFFF" size="2">
						</font></b>
                    </td>
                    <td align="center">
                       <font face="Trebuchet MS" size="2" color="#FFFFFF"><b><%=fname%></b></font><b><font color="#FFFFFF" size="2">
						</font></b>
                    </td>
                    <td align="center">
                        <b>
                        <a href="updateFaculty.jsp?fid=<%=fid%>">
						<font face="Trebuchet MS" size="2" color="#FFFFFF">Update</font></a><font color="#FFFFFF">/</font><font color="#FFFFFF" size="2">
						</font><font color="#797979" size="2">
                         <a href="javascript:confirmDelete('deleteFaculty.jsp?fid=<%=fid%>&fname=<%=fname%>')">
						<font face="Trebuchet MS" size="2" color="#FFFFFF">Delete</font></a></font><font color="#FFFFFF" size="2">
                    	</b>
                    </td>
                </tr>
                <%
                }   
                %>
            </table>  
        </div>
                
            	<p>&nbsp;</div>
        

        
    </body>
</html>