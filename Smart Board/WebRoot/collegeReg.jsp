<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" src="JS/form_valid.js"></script>
    </head>
    <body>
            <jsp:include page="index.jsp"></jsp:include>
            <form action="collegeReg1.jsp" method="post" name="c2c" onsubmit="return validateForm()"> 
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 325px; height: 55px; z-index: 1; left: 239px; top: 28px" id="layer1">
                    <p align="center"><b>
                        <font face="Trebuchet MS" size="6" color="red">Faculty 
                Registration</font></b></div>
                
                <div style="position: absolute; width: 383px; height: 157px; z-index: 2; left: 205px; top: 133px" id="layer2">
                    <table border="0" width="101%" id="table1">
                        <tr>
                            <td width="190"><b>
							<font face="Verdana" size="2" color="#FFFFFF">Faculty Name</font></b></td>
                            <td><input type="text" name="cname" size="20" tabindex="1"></td>
                        </tr>
                        <tr>
                            <td width="190"><b>
							<font face="Verdana" size="2" color="#FFFFFF">User name</font></b></td>
                            <td><input type="text" name="uname" size="20" tabindex="2"></td>
                        </tr>
                        <tr>
                            <td width="190"><b>
							<font face="Verdana" size="2" color="#FFFFFF">Password</font></b></td>
                            <td><input type="password" name="pwd" size="20" tabindex="3"></td>
                        </tr>
                        <tr>
                            <td width="190" height="26"><b>
							<font face="Verdana" size="2" color="#FFFFFF">College Postal Address</font></b></td>
                            <td height="26">
                            <textarea rows="3" name="addr" cols="23" tabindex="4"></textarea></td>
                        </tr>
                        <tr>
                            <td width="190"><b>
							<font face="Verdana" size="2" color="#FFFFFF">College Phone Number</font></b></td>
                            <td><input type="text" name="phn" size="20" tabindex="5" maxlength="11"></td>
                        </tr>
                    </table>
                    </p>
                </div>
                <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 317px; top: 322px" id="layer3">
                    <table border="0" width="100%" id="table2">
                        <tr>
                            <td>
                            <input type="submit" value="Submit" name="submit" tabindex="6"></td>
                            <td><input type="reset" value="Reset" name="reset" tabindex="7"></td>
                        </tr>
                    </table>
                </div>  
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer7">
					<b><font face="Verdana" size="1" color="black">
					<a href="registration.jsp"><font color="black">Back</font></a></font></b></div>
            <p>&nbsp;</div>
            </form>
    </body>
</html>
