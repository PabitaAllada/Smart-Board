<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>        
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 328px; height: 55px; z-index: 1; left: 218px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="white">Students 
					Requests</font></b></div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<b><a href="collegeLogin.jsp">
					<font face="Verdana" size="1" color="black">Back</font></a></b></div>
     <%!
            Connection con;
            Statement st;
            ResultSet rs;
            String cid,college,stname,reqfor,reqdate,resp,respdate;
            int i=0;
     %>
     <%
            cid=(String)session.getAttribute("cid");
            college=(String)session.getAttribute("cname");
    //      out.print("College : "+cid);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st=con.createStatement();
            rs=st.executeQuery("select * from request where response='No Response'");  
    %>
      <div style="position: absolute; width: 300px; height: 100px; z-index: 5; left: 35px; top: 128px" id="layer9">
            <table border="2" width="100%" bordercolor="#808080" id="table1">
                    <tr>
                            <td align="center"><b><font face="Verdana" size="2" color="#000000">College</font></b></td>
                            <td align="center"><b><font face="Verdana" size="2" color="#000000">Student</font></b></td>
                            <td align="center" width="218"><b><font face="Verdana" size="2" color="#000000">Request For</font></b></td>
                            <td align="center" width="121"><b><font face="Verdana" size="2" color="#000000">Requested Date</font></b></td>
                            <td align="center"><b><font face="Verdana" size="2" color="#000000">Response</font></b></td>
                            <td align="center"><b><font face="Verdana" size="2" color="#000000">Response Date</font></b></td>
                    </tr>
    <%
            while(rs.next())
            {
                college=rs.getString(2);
                stname=rs.getString(4);
                reqfor=rs.getString(5);
                reqdate=rs.getString(6);
                resp=rs.getString(7);
                respdate=rs.getString(8);
                i++;
     %>
               
                                <tr>
                                        <td align="center"><b><font face="Verdana" size="2" color="#FFFFFF"><%=college%></font></b></td>
                                        <td align="center"><b><font face="Verdana" size="2" color="#FFFFFF"><%=stname%></font></b></td>
                                        <td align="center" width="218"><b><font face="Verdana" size="2" color="#FFFFFF"><%=reqfor%></font></b></td>
                                        <td align="center" width="218"><b><font face="Verdana" size="2" color="#FFFFFF"><%=reqdate%></font></b></td>
                                        <td align="center" width="218"><b><font face="Verdana" size="2" color="#FFFFFF"><%=resp%></font></b></td>
                                        <td align="center" width="218"><b><font face="Verdana" size="2" color="#FFFFFF"><%=respdate%></font></b></td>
                                </tr>
                       
      <% 
                }
      %>
            </table>
                </div> 	
            
      <%
                if(i==0)
                    {
      %>                   
        <div style="position: absolute; width: 219px; height: 22px; z-index: 2; left: 298px; top: 153px" id="layer2">
            <font size=4 color="#00FF00">
                <h2><font size="2" face="Verdana">There are no requests</font></h2>
            </font>  
        </div>      
        <% 
                        }
        %>
            <p>&nbsp;</div>
        
    </body>
</html>
