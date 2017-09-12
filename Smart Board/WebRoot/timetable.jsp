<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
 <%@ page import="java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body> <jsp:include page="index.jsp"></jsp:include>   
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 283px; height: 55px; z-index: 1; left: 250px; top: 28px" id="layer1">
                    <p align="center"><b>
		   <font face="Trebuchet MS" size="6" color="white">Exam Time Table</font></b></div>
                <div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
                    <b><a href="stdLogin.jsp">
                <font face="Verdana" size="1" color="black">Back</font></a></b></div>
            
            <p></div>
        
    <div style="position: absolute; width: 300px; height: 63px; z-index: 4; left: 380px; top: 316px" id="layer9">
		<table border="0" width="100%" id="table1">
			<tr>
				<td><b><font face="Tahoma" color="#E4DB6B">File Name</font></b></td>
				<td><b><font face="Tahoma" color="#E4DB6B">Download</font></b></td>
			</tr>
<%
File f1=new File("C:\\Files2");
File []fn=f1.listFiles();
for(int i=0;i<fn.length;i++)
    {
    %>    		<tr>
				<td><%=fn[i].getName()%></td>
                                <td><a href="download1.jsp?fn=<%=fn[i].getName()%>">Download</a></td>
			</tr>
    <%
    }
%>    
	
		</table>
	</div>
        
    </body>
</html>
