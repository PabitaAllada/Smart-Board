<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
    <body>
        <form action="sample1.jsp" method="post" name="c2c">
            <a href="index.jsp">Back</a>
            <%
            String utype,uname,feedback;
            ArrayList colal = new ArrayList();
            Array[] arr=new Array[1000];
            Connection con;
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String dataSourceName="c2c";
            String dbURL="jdbc:odbc:" + dataSourceName;
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            Statement s=con.createStatement();
            ResultSet rs=s.executeQuery("select * from feedback");
            ResultSetMetaData rsmd=rs.getMetaData();
            while(rs.next() )
            {
            utype=rs.getString(1);
            uname=rs.getString(2);
            feedback=rs.getString(3);
            colal.add(utype+":"+uname+":"+feedback);
            }
             session.setAttribute("view", colal);
            %>
            <input type="hidden" name="current" value="1">
            <input type="hidden" name="action" value="next">
            Values are stored please Click to View the values <br>
            <input type="submit" value="Click Here">
        </form>
    </body>
</html>