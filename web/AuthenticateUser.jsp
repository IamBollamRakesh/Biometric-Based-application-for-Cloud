<%-- 
    Document   : AuthenticateUser
    Created on : 8 Oct, 2020, 12:29:30 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page import="com.upload.SessionKey"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String cid=request.getParameter("cid");

String skey=SessionKey.randomAlphaNumeric(10);


try{
    String query="update client set session_key='"+skey+"',status='Authenticated'where cid='"+cid+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Successfully Authenticated");
            window.alert("ViewClientDetails.jsp");
        </script>
        <%
    }
else{
 response.sendRedirect("ViewClientDetails.jsp?m=Failed");
}
}catch(Exception e){
out.println(e);    
}





%>