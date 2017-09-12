<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="JS/form_valid.js"></script>
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>     
        <form action="updateStd1.jsp" method="post" name="c2c" onsubmit="return updateStd()"> 
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
                        <font face="Trebuchet MS" size="6" color="white">Update 
                Profile</font></b></div>
                
                <div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
                    <b><a href="stdLogin.jsp">
                <font face="Verdana" size="1" color="black">Back</font></a></b></div>
                <div style="position: absolute; width: 434px; height: 112px; z-index: 2; left: 191px; top: 106px" id="layer2">
                    
                    <%!
                    Connection con;
                    Statement st;
                    PreparedStatement pst;
                    ResultSet rs;
                    String stdid,fname,lname,uname,pwd,mobile,email,addr,college;
                    %>
                    
                    <%
                    String stdid=(String)session.getAttribute("stdid");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from student where stdid='"+stdid+"'");
                    if(rs.next())
                    {
                    fname=rs.getString(2);
                    lname=rs.getString(3);
                    uname=rs.getString(4);
                    pwd=rs.getString(5);
                    mobile=rs.getString(6);
                    email=rs.getString(7);
                    addr=rs.getString(8);
                    college=rs.getString(9);
                    %>
                    <table border="0" width="101%" id="table1">
                        <tr>
                            <td width="183"><b><font face="Verdana" size="2">
                            First Name</font></b></td>
                            <td>
                            <input type="text" name="fname" size="28" tabindex="1" value="<%=fname%>"></td>
                        </tr>
                        <tr>
                            <td width="183"><b><font face="Verdana" size="2">
                            Last Name</font></b></td>
                            <td>
                            <input type="text" name="lname" size="28" tabindex="1" value="<%=lname%>"></td>
                        </tr>
                        <tr>
                            <td width="183">User Name</td>
                            <td>
                            <input type="text" name="uname" size="28" tabindex="1" value="<%=uname%>" disabled></td>
                        </tr>
                        <tr>
                            <td width="183"><b>
                            <font face="Verdana" size="2">Password</font></b></td>
                            <td>
                            <input type="password" name="pwd" size="28" tabindex="2" value="<%=pwd%>"></td>
                        </tr>
                        <tr>
                            <td width="183" height="26">Mobile</td>
                            <td height="26">
                            <input type="text" name="mobile" size="28" tabindex="1" value="<%=mobile%>"></td>
                        </tr>
                        <tr>
                            <td width="183" height="26">Email</td>
                            <td height="26">
                            <input type="text" name="email" size="28" tabindex="1" value="<%=email%>"></td>
                        </tr>
                        <tr>
                            <td width="183" height="26"><b>
                            <font face="Verdana" size="2">Address</font></b></td>
                            <td height="26">
                            <textarea rows="3" name="addr" cols="23" tabindex="3" value="<%=addr%>"><%=addr%></textarea></td>
                        </tr>
                        <tr>
                            <td width="183"><b>
                                    <font face="Verdana" size="2">
                            College</font></b></td>
                            <td>
                            <input type="text" name="college" size="29" tabindex="4" value="<%=college%>" disabled></td>
                        </tr>
                    </table>
                    <% }  %>
                </div>
                
                <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 327px; top: 365px" id="layer3">
                    <table border="0" width="100%" id="table2">
                        <tr>
                            <td>
                                <input type="submit" value="Update" name="submit" tabindex="5">
                            </td>
                        </tr>
                    </table>
                </div>  
                
            </div>
        </form>
    </body>
</html>
