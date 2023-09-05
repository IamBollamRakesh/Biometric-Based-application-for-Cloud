<%-- 
    Document   : VerifyRequest
    Created on : 8 Oct, 2020, 2:25:30 PM
    Author     : KishanVenky
--%>

<%@page import="com.fingerprint.match.FingerprintMatch"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String rid=request.getParameter("rid");
String cid=request.getParameter("cid");

 Blob image = null;

    byte[] imgData = null;
    
     Blob cimage = null;

    byte[] cimgData = null;
try{
   String query="select image from resource_req where rid='"+rid+"'";
   String query1="select finger_print from client where cid='"+cid+"'";
   
   ResultSet r=Queries.getExecuteQuery(query);
   if(r.next()){
    image = r.getBlob(1);
            imgData = image.getBytes(1, (int) image.length());   
       
   }
    ResultSet r1=Queries.getExecuteQuery(query1);
   if(r1.next()){
    cimage = r1.getBlob(1);
            cimgData = cimage.getBytes(1, (int) cimage.length());   
       
   }
   
   Boolean b=FingerprintMatch.getImages(imgData, cimgData);
   
if(b==false){
    String u="update resource_req set status='Verification_Failed',res_date=now() where rid='"+rid+"'";
    Queries.getExecuteUpdate(u);
  %>
  <script type="text/javascript">
      window.alert("verification failed");
      window.location="R_ClientRequest.jsp";
  </script>
  
  <%
}else{
String u="update resource_req set status='Verification_Success',res_date=now() where rid='"+rid+"'";
    Queries.getExecuteUpdate(u);
  %>
  <script type="text/javascript">
      window.alert("verification success");
       window.location="R_ClientRequest.jsp";
  </script>
  
  <%
}
    
    
}catch(Exception e){
 out.println(e);   
}


%>