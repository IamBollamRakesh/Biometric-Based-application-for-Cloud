<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pass");
    
    String query="select * from client where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
      String status=i.getString("status");
      if(status.equals("waiting")){
         %>
      <script type='text/javascript'>
          window.alert("Not Authenticated By Authenticate Server");
          window.location="Client.jsp";
      </script>
      <% 
      }else{
session.setAttribute("pkey",i.getString("pkey"));
       session.setAttribute("cid",i.getString("cid"));
       session.setAttribute("username",i.getString("username"));
        session.setAttribute("email",i.getString("email"));
%>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="ClientHome.jsp";
      </script>
      <%
}
    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="Client.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>