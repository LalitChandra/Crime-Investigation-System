<%@page import="java.sql.*"%>
<%!
Connection con;
Statement st;
ResultSet rs;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ocr","ocr");
st=con.createStatement();
rs=st.executeQuery("select * from cautions order by dat desc");
%>
<html>

<head>
<title>ALERT MESSAGES</title>
<script language="javascript" src="./menu.js"></script>
<script language="javascript" src="./menu_items.js"></script>
<script language="javascript" src="./menu_tpl.js"></script>
<script language="javascript">
  new menu (MENU_ITEMS, MENU_POS, MENU_STYLES);
</script>

<style type="text/css">
body {
          background-image:  url('ricebk.jpg');
          background-repeat: repeat;
          background-position:  center 50%;
          background-height:100px
         
          }

</style></head>

<body>
 <center><br><br><br><br><table border=2>
                    <tr><th>&nbsp;&nbsp;Area:&nbsp;&nbsp;</th>
                    <th>&nbsp;&nbsp;Description:&nbsp;&nbsp;</th>
                    <th>&nbsp;&nbsp;Date:&nbsp;&nbsp;</th></tr>
                    <%
            while(rs.next())
            {
            %>
            
            <tr><td>&nbsp;&nbsp;<%=rs.getString(1)%>&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp;<%=rs.getString(2)%>&nbsp;&nbsp;</td> 
               <td>&nbsp;&nbsp;<%=rs.getString(3)%>&nbsp;&nbsp;</td> 
            </tr>
                     
            
            <%
            }
            
            %>   
        </table>
    </center>
</body>
</html>