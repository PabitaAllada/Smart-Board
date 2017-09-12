<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="index.jsp"></jsp:include>     
        <form action="sendRequest1.jsp" method="post">
            <div style="position: absolute; width: 792px; height: 425px; z-index: 3; left: 115px; top: 229px" id="layer6">
                
                <div style="position: absolute; width: 239px; height: 55px; z-index: 1; left: 271px; top: 28px" id="layer1">
                    <p align="center"><b>
                        <font face="Trebuchet MS" size="6" color="white">Send 
                Request</font></b></div>
                
                <div style="position: absolute; width: 57px; height: 26px; z-index: 4; left: 731px; top: 4px" id="layer8">
                    <b><a href="stdLogin.jsp">
                <font face="Verdana" size="1" color="black">Back</font></a></b></div> 
        <%!
        Connection con;
        Statement st,st1;
        PreparedStatement pst;
        ResultSet rs,rs1;
        String stname,college,stdid;
        %>
        <%
            stdid=(String)session.getAttribute("stdid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st=con.createStatement();
            rs=st.executeQuery("select * from student where stdid='"+stdid+"'");  
            while(rs.next())
                { 
                   stname=rs.getString(4);
                   college=rs.getString(9);
        %>
                <div style="position: absolute; width: 294px; height: 144px; z-index: 5; left: 263px; top: 137px" id="layer9">
                    <table border="0" width="100%" id="table1">
                        <tr>
                            <td width="43%"><b>
                            <font face="Verdana" size="2" color="#FFFFFF">Name</font></b></td>
                            <td colspan="2">
                            <input type="text" name="stname" size="20" tabindex="1" value="<%=stname%>" disabled></td>
                        </tr>
                        <tr>
                            <td width="43%"><b>
                                    <font face="Verdana" size="2" color="#FFFFFF">
                            College</font></b></td>
                            <td colspan="2">
                            <input type="text" name="cname" size="20" tabindex="2" value="<%=college%>" disabled></td>
                        </tr>
                        <tr>
                            <td width="43%"><b>
                                    <font face="Verdana" size="2" color="#FFFFFF">
                            Request For</font></b></td>
                            <td colspan="2">
                            <textarea rows="2" name="reqfor" cols="20"></textarea></td>
                        </tr>
                        <tr>
                            <td width="43%">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                        </tr>  
                        <tr>
                            <td width="43%">&nbsp;</td>
                            <td width="24%">
                            <input type="submit" value="Submit" name="B1" tabindex="4"></td>
                            <td width="28%">
                            <input type="reset" value="Reset" name="B2" tabindex="5">
                            <input type="hidden" name="stname" value="<%=stname%>">
                            <input type="hidden" name="college" value="<%=college%>"></td>
                        </tr>
                    </table>
                </div>       
           <% 
                }
           %>
            <p>&nbsp;</div>
        </form>
    </body>
</html>
