<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="JS/form_valid.js"></script>
    </head>
    <body>
            <jsp:include page="index.jsp"></jsp:include>
            <form action="stdReg1.jsp" method="post" name="c2c" onsubmit="return validateStdForm()"> 
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 325px; height: 55px; z-index: 1; left: 239px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="pink">Student 
                Registration</font></b></div>
                
                <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 319px; top: 350px" id="layer3">
                    <table border="0" width="100%" id="table4">
                        <tr>
                            <td>
                            <input type="submit" value="Submit" name="submit" tabindex="6"></td>
                            <td><input type="reset" value="Reset" name="reset" tabindex="7"></td>
                        </tr>
                    </table>
                </div>  
         <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String college;
        %>
         <%
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
                st=con.createStatement();
                rs=st.executeQuery("select * from college");  
         %>
        <div style="position: absolute; width: 366px; height: 218px; z-index: 2; left: 227px; top: 104px" id="layer2">
            <table border="0" width="100%" id="table5">
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">First Name</font></b></td>
                    <td width="46%">
                    <input type="text" name="fname" size="20" tabindex="1"></td>
                </tr>
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">Last Name</font></b></td>
                    <td width="46%">
                    <input type="text" name="lname" size="20" tabindex="2"></td>
                </tr>
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">User Name</font></b></td>
                    <td width="46%">
                    <input type="text" name="uname" size="20" tabindex="3"></td>
                </tr>
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">Password</font></b></td>
                    <td width="46%">
                    <input type="password" name="pwd" size="20" tabindex="4"></td>
                </tr>
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">Mobile</font></b></td>
                    <td width="46%">
                    <input type="text" name="mobile" size="20" tabindex="5"></td>
                </tr>
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">Email Id</font></b></td>
                    <td width="46%">
                    <input type="text" name="email" size="20" tabindex="6"></td>
                </tr>
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">Address</font></b></td>
                    <td width="46%">
                    <textarea rows="2" name="addr" cols="20" tabindex="7"></textarea></td>
                </tr>
                <tr>
                    <td width="49%"><b>
					<font face="Verdana" size="2">College</font></b></td>
                    <td width="46%">
                    <input type="text" name="college">
                        </td>
                </tr>
                </table>
        </div>
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer7">
					<b><font face="Verdana" size="1" color="black">
					<a href="registration.jsp"><font color="black">Back</font></a></font></b></div>
            <p>&nbsp;</div>
                    
    </body>
</html>
