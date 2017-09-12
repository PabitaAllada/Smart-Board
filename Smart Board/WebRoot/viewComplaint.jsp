<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <form name="c2c">
            <jsp:include page="index.jsp"></jsp:include>
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 250px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="green">
					Complaints</font></b></div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<b><a href="adminLogin.jsp">
					<font face="Verdana" size="1" color="black">Back</font></a></b></div>
        
     <%!
            Connection con;
            Statement st;
            ResultSet rs;
            String utype,name,feed;
     %>
     <div style="position: absolute; width: 400px; height: 75px; z-index: 1; left: 200px; top: 119px" id="layer3">
            <table border="1" width="101%" id="table1" bordercolor="#797979" height="50">
                <tr>
                    <td align="center">
                        <p align="center">
                    <b><font face="Verdana" size="2" color="#E4DB6B">User Type</font></b></td>
                    <td align="center">
                        <b><font face="Verdana" size="2" color="#E4DB6B">Name</font></b></td>
                    <td width="239" align="center">
                        <p align="center">
                    <b>
                    <font face="Verdana" size="2" color="#E4DB6B">Feedback</font></b></td>
                </tr>
     <%
             int current = 0;
                        if(request.getParameter("current") != null) {
                        current = Integer.parseInt(request.getParameter("current"));
                        }
                        int skip = 5;
                        
                        String action = "";
                        if(request.getParameter("action") != null) {
                        action = request.getParameter("action");
                        }
                        if ( action.equals("next") ) {
                        current += skip;
                        }
                        if ( action.equals("prev") ) {
                        current -= skip;
                        }
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs=st.executeQuery("select * from feedback");  
            rs.last();
                        int rows = rs.getRow();
                        if ( current >= rows ) current = rows-skip;
                        if ( current < 0 ) current = 1;
                        int i=1;
                        rs.absolute(current);
                        boolean next = false;
                        while((next=rs.next()) && i<skip+1) {
     %>        
        
                <%
                utype=rs.getString(1);
                name=rs.getString(2);
                feed=rs.getString(3);
                %>
                <tr>
                    <td align="center"><font face="Verdana" size="2" color="#FFFFFF"><b><%=utype%></b></font></td>
                    <td align="center"><font face="Verdana" size="2" color="#FFFFFF"><b><%=name%></b></font></td>
                    <td align="center"><font face="Verdana" size="2" color="#FFFFFF"><b><%=feed%></b></font></td>
                </tr>
                <%
                        i++;
                }   
                %>
            </table>  
        </div> <INPUT TYPE="HIDDEN" NAME="current" VALUE="<%=current%>"> <INPUT TYPE="HIDDEN" NAME="action" VALUE="next">
                
            	<p>&nbsp;</div>
                 <div style="position: absolute; width: 308px; height: 100px; z-index: 4; left: 764px; top: 502px" id="layer9">

<%
if(next) {
%>
<INPUT TYPE="BUTTON" VALUE="Next Record" ONCLICK="moveNext()">
<%
}
if(current > 0) {
%>
<INPUT TYPE="BUTTON" VALUE="Previous Record" ONCLICK="movePrevious()">
<%
}
if(current < 0) {
%>
<INPUT TYPE="BUTTON" VALUE="Next Record" ONCLICK="moveNext()">
<%
}
%>
&nbsp;</div>
        </form>  
       
        <SCRIPT LANGUAGE="JavaScript">

function moveNext()
{
c2c.action.value = 'next';
c2c.submit()
}
function movePrevious()
{
c2c.action.value = 'prev';
c2c.submit()
}

</SCRIPT>
        
    </body>
</html>
