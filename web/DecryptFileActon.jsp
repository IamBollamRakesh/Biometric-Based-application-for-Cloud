<%-- 
    Document   : AServerHome
    Created on : 8 Oct, 2020, 9:36:18 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<title>Designing Secure</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="#">Designing</a></h1>
    <p>Secure and Efficient Biometric</p>
    <div id="topnav">
      <ul>
        <li><a   href="ClientHome.jsp">Home</a></li>
         <li><a  href="C_SendReq.jsp">Send Request</a></li>
          <li><a class="active" href="C_ViewResponse.jsp">View Response</a></li>
         <li><a href="C_ViewAccessedFile.jsp">View Accessed Files</a></li>
         
         <li class="last"><a href="Client.jsp">Logout</a></li>
      </ul>
    </div>
    <div id="search">
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
      <%-- 
    Document   : DecryptFileActon
    Created on : 8 Oct, 2020, 3:14:53 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.Statement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>

<%
String pkey=(String)session.getAttribute("pkey");
      String cid=(String)session.getAttribute("cid");
      String username=(String)session.getAttribute("username");
      String email=(String)session.getAttribute("email");
      
String fid=request.getParameter("fid");
String fname=request.getParameter("fname");
String pkey1=request.getParameter("pkey");
String rid=request.getParameter("rid");
try{
    String query="select * from client where cid='"+cid+"'and pkey='"+pkey1+"'";
    ResultSet r=Queries.getExecuteQuery(query);
    Connection con=Dbconnection.getcon();
    Statement st=con.createStatement();
     Statement st2=con.createStatement();
     %>
     
     <table>
         <tr><th>File Name</th><th>Decrypt Data</th><th>Download</th></td></tr>
     <%
     
     if(r.next()){
      st2.executeUpdate("update resource_req set fid='"+fid+"' where rid='"+rid+"'"); 
     
      String q="select * from file where fid='"+fid+"'and fname='"+fname+"'";  
      ResultSet rr=st.executeQuery(q);
      if(rr.next()){
         String data=rr.getString("data");
         %>
         <tr><td><%=fid%></td><td><textarea cols='50' rows='15'><%=data%></textarea></td>
             <td><a href="Download.jsp?fname=<%=fname%>&fid=<%=fid%>">Download</a></td></tr>
         <%
      }
   } 
     %>
         
         
     </table>
     
     <%
}
catch(Exception e){
 out.println(e);   
}
%>
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      
        
        
        
        
        
        
        
        
        
        
        
      <div class="homecontent">
       
        <div class="clear"></div>
      </div>
     </div>
    <div id="column">
      <div id="featured">
        <ul>
          <li>
                 </li>
        </ul>
      </div>
     
    </div>
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col5">
  <div id="footer">
   
    <!-- End Contact Form -->
    <div id="compdetails">
     
     
      <div class="clear"></div>
    </div>
    <!-- End Company Details -->
    <div id="copyright">
      <p class="fl_left">Designing Secure and Efficient Biometric-Based Secure Access Mechanism</p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>