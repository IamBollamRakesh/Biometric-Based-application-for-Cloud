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
        <li><a  href="AServerHome.jsp">Home</a></li>
         <li><a class="active" href="ViewClientDetails.jsp">View Client Details</a></li>
         <li><a  href="syntheticfingerprintimages.jsp">Synthetic Fingerprint Images</a></li>
          <li><a  href="UserFingerPrint.jsp">User Fingerprint</a></li>
         <li class="last"><a href="AuthenticationServer.jsp">Logout</a></li>
      </ul>
    </div>
    <div id="search">
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
      <h2>View Client Details</h2>
     
      <table>
          <tr>
              <th>Name</th><th>Email</th><th>Mobile</th><th>Address</th><th>Private Key</th><th>Session Key</th><th>Authenticate</th>
          </tr>
         <%
         try{
             String query="select * from client";
             ResultSet r=Queries.getExecuteQuery(query);
             while(r.next()){
                
                 String status=r.getString("status");
              %>
              <tr>
                  <td><%=r.getString("name")%></td>
                  <td><%=r.getString("email")%></td>
                  <td><%=r.getString("mobile")%></td>
                  <td><%=r.getString("address")%></td>
                  <td><%=r.getString("pkey")%></td>
                   <td><%=r.getString("session_key")%></td>
                   <%if(status.equals("waiting")){
                       %>
                       <td><a href="AuthenticateUser.jsp?cid=<%=r.getString("cid")%>">Authenticate</a></td>   
                       <%
                   }else{
 %>
                       <td><%=r.getString("status")%></td>   
                       <%
}%>
              </tr>
              <%
             }
         }catch(Exception e)
         {
             out.println(e);
         }
         
         
         %> 
      </table>
      
      
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