<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>    
        <form action="updateFaculty1.jsp" method="post">
    
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
					<font face="Trebuchet MS" size="6" color="white">Update 
					Faculty</font></b></div>
                
            	<div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
					<b><font face="Verdana" size="1"><a href="facToUpdate.jsp">
					<font color="black">Back</font></a></font></b></div>
                
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String fid,fname,qual,exp,langs;
            int i;
            %>
            <div style="position: absolute; width: 314px; height: 112px; z-index: 2; left: 246px; top: 128px" id="layer2">
                <%
                fid=request.getParameter("fid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
                st=con.createStatement();
                rs=st.executeQuery("select * from faculty where fid='"+fid+"'");
                if(rs.next())
                {
                fname=rs.getString(3);
                qual=rs.getString(4);
                exp=rs.getString(5);
                langs=rs.getString(6);
                %>
                <table border="0" width="101%" id="table1">
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Faculty Name</font></b></td>
                        <td><input type="text" name="fname" size="20" tabindex="1" value="<%=fname%>"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Qualification</font></b></td>
                        <td><input name="qual" size="20" tabindex="2" value="<%=qual%>"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Experience</font></b></td>
                        <td><input type="text" name="exp" size="20" tabindex="3" value="<%=exp%>"></td>
                    </tr>
                    <tr>
                        <td width="139"><b><font face="Verdana" size="2">Skill Set</font></b></td>
                        <td><input type="text" name="skill" size="20" tabindex="4" value="<%=langs%>"></td>
                    </tr>
                </table>
                <% }  %>
            </div>
            <div style="position: absolute; width: 185px; height: 41px; z-index: 3; left: 311px; top: 258px" id="layer3">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
                        <input type="submit" value="Update" name="submit" tabindex="5">                    
                        <input type="hidden" value="<%=fid%>" name="fid">
                        </td>
                    </tr>
                </table>
            </div>  
                
            	<p>&nbsp;</div>
        </form>
    </body>
</html>