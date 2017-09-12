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
					<font face="Trebuchet MS" size="6" color="red">Admin 
					Login</font></b></div>
                
  <div style="position: absolute; width: 176px; height: 138px; z-index: 1; left: 307px; top: 143px" id="layer7">	
	<p align="center">	
	<b><font face="Verdana"><a href="approveCollege.jsp">
	<font color="#000000" size="2">Approve Faculty</font></a></font></b></p>
	<p align="center"><b>
           <font face="Verdana"><a href="deleteCollege.jsp">
	<font color="#000000" size="2">Delete Faculty</font></a></font></b></p>
           <p align="center"><b><font face="Verdana">
			<a href="viewStds.jsp?current=<%="1"%>&action=<%="next"%>">
			<font color="#000000" size="2">View Students</font></a></font></b></p>
           <p align="center"><b><font face="Verdana" size="2">
			<a href="viewComplaint.jsp?current=<%="1"%>&action=<%="next"%>">
			<font color="#000000" size="2">View Complaints</font></a></font></b></p></div>
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<b><font face="Verdana" size="1"><a href="login.jsp">
					<font color="#000000">Logout</font></a></font></b></div>
                
            	<p>&nbsp;</div>
    </body>
</html>
