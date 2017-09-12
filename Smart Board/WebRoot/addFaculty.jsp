<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>  
        <form action="addFaculty1.jsp" method="post">
        <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
            
            <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                <p align="center"><b>
                    <font face="Trebuchet MS" size="6" color="white">Add 
            Faculty</font></b></div>
            
            <div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
                <b><a href="facultyMgmt.jsp">
            <font face="Verdana" size="1" color="black">Back</font></a></b></div>
            
            <div style="position: absolute; width: 314px; height: 112px; z-index: 2; left: 246px; top: 128px" id="layer2">
                <table border="0" width="101%" id="table1">
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Faculty Name</font></b></td>
                        <td><input type="text" name="fname" size="20" tabindex="1"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Qualification</font></b></td>
                        <td><input name="qual" size="20" tabindex="2"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Experience</font></b></td>
                        <td><input type="text" name="exp" size="20" tabindex="3"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Skill Set</font></b></td>
                        <td><input type="text" name="skill" size="20" tabindex="4"></td>
                    </tr>
                </table>
                </p>
            </div>
            <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 311px; top: 258px" id="layer3">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
                        <input type="submit" value="Submit" name="submit" tabindex="5"></td>
                        <td><input type="reset" value="Reset" name="reset" tabindex="6"></td>
                    </tr>
                </table>
            </div>  
            
        <p>&nbsp;</div>
        </form>
    </body>
</html>
