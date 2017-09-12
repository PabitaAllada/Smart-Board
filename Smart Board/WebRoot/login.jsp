<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
        function validate()
        {
           var i=0;
           var str="";
           if(document.c2c.uname.value.length==0)
           {
               str+="\n User Name";
               i++;
           }
           if(document.c2c.pwd.value.length==0)
           {
               str+="\n Password";
               i++;
           }
           if(i==0)
           {
              document.action="login1.jsp";
              document.submit();
              return true;
           }
           else
           {
               alert("Please enter the below feilds..\n"+str);
               return false;
           }
        }
        </script>
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>
        <form action="login1.jsp" method="post" name="c2c" onsubmit="return validate()">
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 288px; height: 29px; z-index: 3; left: 270px; top: 141px" id="layer3">
                    <table border="0" width="100%" id="table1" >
                        <tr>
                            <td> 
	<b><font color="#FFFFFF"><input type="radio" value="admin" checked name="utype" tabindex="1">Admin</font> </b></td>
                            <td> <b><font color="#FFFFFF">
                            <input type="radio" value="college" name="utype" tabindex="2">Faculty</font></b></td>
                            <td> <b><font color="#FFFFFF">
                            <input type="radio" value="std" name="utype" tabindex="3">Student</font></b></td>
                        </tr>
                    </table>
                </div>
                <div style="position: absolute; width: 267px; height: 99px; z-index: 2; left: 282px; top: 185px" id="layer2">
                    <table border="0" width="100%" id="table2" height="102">
                        <tr>
                            <td><font face="Verdana" size="2" color="white"><b>User Name</b></font></td>
                            <td><input type="text" name="uname" size="20" tabindex="4"></td>
                        </tr>
                        <tr>
                            <td><font face="Verdana" size="2" color="white"><b>Password</b></font></td>
                            <td>
                            <input type="password" name="pwd" size="20" tabindex="5"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Login" name="B1" tabindex="6">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" value="Reset" name="B2" tabindex="7"></td>
                        </tr>
                    </table>
                </div>
                <div style="position: absolute; width: 186px; height: 55px; z-index: 1; left: 311px; top: 28px" id="layer1">
                    <p align="center">
                <b><font color="orange" size="6" face="Trebuchet MS">Login</font></b></div>
                
            </div>
</form></body></html>

		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 