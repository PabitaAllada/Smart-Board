<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="JS/form_valid.js"></script>
    </head>
    <body>
            <jsp:include page="index.jsp"></jsp:include>
        <form action="updateCollege1.jsp" method="post" name="c2c" onsubmit="return updateForm()"> 

            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="white">Update 
					Faculty</font></b></div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<b><a href="collegeLogin.jsp">
					<font face="Verdana" size="1" color="black">Back</font></a></b></div>
                
            <div style="position: absolute; width: 434px; height: 112px; z-index: 2; left: 246px; top: 128px" id="layer2">
            
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String cid,cname,uname,pwd,addr,phn;
            int i;
            %>

                <%
                String cid=(String)session.getAttribute("cid");
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
                            <td width="183"><b>
							<font face="Verdana" size="2" color="#FFFFFF">
						Faculty Name</font></b></td>
                            <td>
							<input type="text" name="cname" size="28" tabindex="1" value="<%=cname%>" readonly></td>
                        </tr>
                        <tr>
                            <td width="183"><b>
							<font face="Verdana" size="2" color="#FFFFFF">
							User Name</font></b></td>
                            <td>
							<input type="text" name="uname" size="28" tabindex="1" value="<%=uname%>" disabled></td>
                        </tr>
                        <tr>
                            <td width="183"><b>
							<font face="Verdana" size="2" color="#FFFFFF">Password</font></b></td>
                            <td>
							<input type="password" name="pwd" size="28" tabindex="2" value="<%=pwd%>"></td>
                        </tr>
                        <tr>
                            <td width="183" height="26"><b>
							<font face="Verdana" size="2" color="#FFFFFF">College Postal Address</font></b></td>
                            <td height="26">
                            <textarea rows="3" name="addr" cols="23" tabindex="3" value="<%=addr%>"><%=addr%></textarea></td>
                        </tr>
                        <tr>
                            <td width="183"><b>
							<font face="Verdana" size="2" color="#FFFFFF">
							College Phone Number</font></b></td>
                            <td>
							<input type="text" name="phn" size="29" tabindex="4" value="<%=phn%>"></td>
                        </tr>
                        </table>
                <% }  %>
            </div>
                
            <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 377px; top: 317px" id="layer3">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
                        <input type="submit" value="Update" name="submit" tabindex="5">                       
                        <input type="hidden" value="<%=cid%>" name="cid">
<input type="hidden" value="<%=cname%>" name="cname">
                        </td>
                    </tr>
                </table>
            </div>  
                
            	<p>&nbsp;</div>
        
    </body>
</html>
