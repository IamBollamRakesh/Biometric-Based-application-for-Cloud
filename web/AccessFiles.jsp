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
        <li><a  href="ClientHome.jsp">Home</a></li>
         <li><a  href="C_SendReq.jsp">Send Request</a></li>
          <li><a class="active"  href="C_ViewResponse.jsp">View Response</a></li>
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
      <%
          String pkey=(String)session.getAttribute("pkey");
      String cid=(String)session.getAttribute("cid");
      String username=(String)session.getAttribute("username");
      String email=(String)session.getAttribute("email");
      
String rid=request.getParameter("rid");
        %>
      <h2>View Response</h2>
      
      
      <table>
          <tr>
              <th>FID</th>
              <th>File Name</th>
              <th>Domain</th>
              <th>File Data</th>
              <th>Decrypt</th>
              
          </tr>
          <%try{
          String query="select * from file";
          ResultSet r=Queries.getExecuteQuery(query);
          while(r.next()){
              String fid=r.getString("fid");
            String fname=r.getString("fname");  
            String domain=r.getString("domain");
            String cipher=r.getString("cipher");
            %>
            <tr>
                <td><%=fid%></td>
                
                <td><%=fname%></td>
            
                <td><%=domain%></td>
                <td><textarea cols="30" rows="15"><%=cipher%></textarea></td>
               
                <td><a href="DecryptFile.jsp?fid=<%=fid%>&fname=<%=fname%>&rid=<%=rid%>">Decrypt File</a></tD>
                  
            </tr>
            <%
          }
          
          
          }catch(Exception e){
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