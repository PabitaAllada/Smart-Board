<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
    <body>
        <form action="sample1.jsp" method="post" name="c2c">
                       <a href="sample.jsp">Back</a>
            <%
            int current = 0;
            if(request.getParameter("current") != null) {
            current = Integer.parseInt(request.getParameter("current"));
            }
            int skip = 3;

            String action = "";
            if(request.getParameter("action") != null) {
            action = request.getParameter("action");
            }
            if ( action.equals("next") ) {
            current += skip;
            }
            if ( action.equals("prev") ) {
            current -= skip;
            }
            %>
            <%
          
            String utype,uname,feedback;
            ArrayList al1 = new ArrayList();
            String[] rowarr=new String[10000];
            al1=(ArrayList)session.getAttribute("view");
            int noele=al1.size();
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String dataSourceName="c2c";
            String dbURL="jdbc:odbc:" + dataSourceName;
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","se","seproj");
            Statement s=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            ResultSet rs=s.executeQuery("select * from feedback");
          rs.last();
int rows = rs.getRow();
if ( current >= rows ) current = rows-skip;
if ( current < 0 ) current = 1;
rs.absolute(current);

%>

<TABLE BORDER="1">
<TR>
<TH>utype</TH>
<TH>Name</TH>
<TH>feedback</TH>
</TR>
<%
int i=0;
boolean next = false;
while((next=rs.next()) && i<skip) {
i++;
%>
<TR>
<TD> <%= rs.getString(1) %> </TD>
<TD> <%= rs.getString(2) %> </TD>
<TD> <%= rs.getString(3) %> </TD>
</TR>
<%
}
%>
</TABLE>
<BR>
<INPUT TYPE="HIDDEN" NAME="current" VALUE="<%=current%>">
<INPUT TYPE="HIDDEN" NAME="action" VALUE="next">
<%
if(next) {
%>
<INPUT TYPE="BUTTON" VALUE="Next Record" ONCLICK="moveNext()">
<%
}
if(current > 0) {
%>
<INPUT TYPE="BUTTON" VALUE="Previous Record" ONCLICK="movePrevious()">
<%
}
if(current < 0) {
%>
<INPUT TYPE="BUTTON" VALUE="Next Record" ONCLICK="moveNext()">
<%
}
%>
</FORM>
<SCRIPT LANGUAGE="JavaScript">
<!--
function moveNext()
{
c2c.action.value = 'next';
c2c.submit()
}
function movePrevious()
{
c2c.action.value = 'prev';
c2c.submit()
}
// -->
</SCRIPT>
  
            
            