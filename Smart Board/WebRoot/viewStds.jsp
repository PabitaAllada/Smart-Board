<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>    
        <form name="c2c">
            <jsp:include page="index.jsp"></jsp:include>        
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
                        <font face="Trebuchet MS" size="6" color="blue">Students 
                List</font></b></div>
                
                <div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
                    <b><a href="adminLogin.jsp">
                <font face="Verdana" size="1" color="black">Back</font></a></b></div>
                
                <div style="position: absolute; width: 752px; height: 100px; z-index: 1; left: 14px; top: 116px" id="layer3">
                    <table border="1" width="101%" id="table1" bordercolor="#797979">
                        <tr>
                            <td><p align="center"><b><font face="Trebuchet MS" size="2" color="#E4DB6B">Student Name</font></b></td>
                            <td width="87"><p align="center"><b><font face="Trebuchet MS" size="2" color="#E4DB6B">Mobile</font></b></td>
                            <td width="157"><p align="center"><b><font face="Trebuchet MS" size="2" color="#E4DB6B">Email Id</font></b></td>
                            <td width="200"><p align="center"><b><font face="Trebuchet MS" size="2" color="#E4DB6B">Address</font></b></td>
                            <td width="165"><p align="center"><b><font face="Trebuchet MS" size="2" color="#E4DB6B">College</font></b></td>
                        </tr>
                        <%!
                        Connection con;
                        Statement st;
                        PreparedStatement pst;
                        ResultSet rs;
                        String fname,lname,mobile,email,addr,college;
                        %>
                        <%
                        int current = 0;
                        if(request.getParameter("current") != null) {          //current=1;
                        current = Integer.parseInt(request.getParameter("current"));
                        }
           //             out.println("current : "+current);
                        int skip = 5;
                        
                        String action = "";
                        if(request.getParameter("action") != null) {           // action=next;
                        action = request.getParameter("action");
                        }
                        if ( action.equals("next") ) {
                        current += skip;                                       //current=4;
                        }
                        if ( action.equals("prev") ) {
                        current -= skip;
                        }
                        %>
                        <%
                        Class.forName("oracle.jdbc.driver.OracleDriver");
     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
     st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                       rs=st.executeQuery("select * from student");
                        rs.last();
                        int rows = rs.getRow();
                        if ( current >= rows )
						current = rows-skip;
                        if ( current < 0 ) 
						    current = 1;
                        int i=1;
                        rs.absolute(current);
                        boolean next = false;
                        while((next=rs.next()) && i<skip+1) {
                        
                        %>
                        
                        <tr>                            
       <td align="center"><b><font face="Verdana" size="2" color="#FFFFFF"><%=rs.getString(2)%>&nbsp;
							<%=rs.getString(3)%></font></b></td>
                            <td height="26" align="center"><b><font face="Verdana" size="2" color="#FFFFFF"><%=rs.getString(6)%></font></b></td>
                            <td align="center"><b><font face="Verdana" size="2" color="#FFFFFF"><%=rs.getString(7)%></font></b></td>
                            <td align="center"><b><font face="Verdana" size="2" color="#FFFFFF"><%=rs.getString(8)%></font></b></td>
                            <td align="center"><b><font face="Verdana" size="2" color="#FFFFFF"><%=rs.getString(9)%></font></b></td>
                        </tr>
                        <%
                        i++;
                        }
                        %>
                    </table>
                </div>
                
            <p>&nbsp;</div>
            <INPUT TYPE="HIDDEN" NAME="current" VALUE="<%=current%>"> <INPUT TYPE="HIDDEN" NAME="action" VALUE="next">
 <div style="position: absolute; width: 308px; height: 100px; z-index: 4; left: 648px; top: 565px" id="layer9">

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
%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
