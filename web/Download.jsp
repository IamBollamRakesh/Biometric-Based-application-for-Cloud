<%-- 
    Document   : Download
    Created on : 8 Oct, 2020, 3:32:39 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String pkey=(String)session.getAttribute("pkey");
      String cid=(String)session.getAttribute("cid");
      String username=(String)session.getAttribute("username");
      String email=(String)session.getAttribute("email");
      
      String fname=request.getParameter("fname");
      String fid=request.getParameter("fid");
try{
    
    String query="insert into download values('"+cid+"','"+fid+"','"+fname+"',now())";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        response.sendRedirect("Download?"+fname);
    }else{
       %>
       <script type='text/javascript'>
           window.alert("Download Failed");
           window.location="C_ViewResponse.jsp";
       </script>
       <%
    }
    
    
    
    
}catch(Exception e){
    out.println(e);
}







%>