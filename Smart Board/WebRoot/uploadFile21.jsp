<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>   
        <form action="uploadFile22.jsp" method="post" name="upform"  enctype="multipart/form-data">
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
                        <font face="Trebuchet MS" size="6" color="white">Upload 
                File</font></b></div>
                
                <div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
                    <b><a href="collegeLogin.jsp">
                <font face="Verdana" size="1" color="black">Back</font></a></b></div>
                
                <div style="position: absolute; width: 443px; height: 100px; z-index: 1; left:162px; top:148px" id="layer9">
                    <table width="60%" border="0" cellspacing="1" cellpadding="1"  
                           align="center" class="style1" id="table1">  
                        <tr>  
                            <td align="left"><font face="Verdana" color="#E4DB6B" size="2"><b>Select a file to upload :</b></font></td>  
                        </tr>  
                        <tr>  
                            <td align="left">  
                                <input type="file" name="uploadfile" size="50">  
                            </td>  
                        </tr>  
                        <tr>  
                            <td align="left">  
                                <input type="submit" name="Submit" value="Upload">  
                                <input type="reset" name="Reset" value="Cancel">  
                            </td>  
                        </tr>  
                    </table>  
                </div>                
            <p>&nbsp;</div>
        </form>   
    </body>
</html>
