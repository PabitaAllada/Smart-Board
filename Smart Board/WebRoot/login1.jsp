<%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
    </head>
    <body >
        <form>
            <%!
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            String uname,pwd,utype,status,cid,cname;
            %>
            <%
            utype=request.getParameter("utype");
            uname=request.getParameter("uname");
            pwd=request.getParameter("pwd");
            session.setAttribute("utype",utype);
            Class.forName("oracle.jdbc.driver.OracleDriver");
      con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            st = con.createStatement();
            if(utype.equals("admin"))
            {
                session.setAttribute("uname",uname);
                rs=st.executeQuery("select * from admin where uname='"+uname+"'and pwd='"+pwd+"'");
                if(rs.next())
                {
            %>
            <jsp:forward page="adminLogin.jsp"></jsp:forward>
            <%
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 160px; top: 345px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            else if(utype.equals("college"))
            {
                session.setAttribute("uname",uname);
                rs=st.executeQuery("select * from college where uname='"+uname+"'and pwd='"+pwd+"'");
                if(rs.next())
                {
                    cid=rs.getString(1);
                    cname=rs.getString(2);
                    status=rs.getString(7);
                    session.setAttribute("cid",cid);
                    session.setAttribute("cname",cname);
                   if(status.equals("Approved"))
                       {
            %>
                        <jsp:forward page="collegeLogin.jsp"></jsp:forward>
            <%
                       }
                   else
                       {
                        %>
                        <div style="position: absolute; width: 434px; height: 30px; z-index: 1; left:157px; top:265px" id="layer4">
                            <font size="4" color="#FF0000">Sorry, you did n't get the approval</font></div>           
                        <font size="4" color="#FF0000">
                        <%
                       }
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 169px; top: 299px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            else if(utype.equals("std"))
            {
                session.setAttribute("uname",uname);
                rs=st.executeQuery("select * from student where uname='"+uname+"'and pwd='"+pwd+"'");
                if(rs.next())
                {
                    String stdid=rs.getString(1);
                    String fname=rs.getString(2);
                    String lname=rs.getString(3);
                    String college=rs.getString(9);
                    session.setAttribute("stdid",stdid);
                    session.setAttribute("fname",fname);
                    session.setAttribute("lname",lname);
                    session.setAttribute("college",college);
            %>
            <jsp:forward page="stdLogin.jsp"></jsp:forward>
            <%
                }
                else
                { 
            %>
                        <div style="position: absolute; width: 423px; height: 43px; z-index: 1; left: 161px; top: 343px" id="layer1">
                            <font size="4" color="#FF0000">
                                Sorry,You entered an invalid Username or Password</font>
                        </div>
             <%       
                }
            }
            %>
            <jsp:include page="login.jsp"></jsp:include>                       
        </form>
    </body>
</html>