
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
        <li><a href="index.html">Home</a></li>
        <li><a  class="active" href="Client.jsp">Client</a></li>
        <li><a href="AuthenticationServer.jsp">Authentication Server</a></li>
  
        
        <li><a href="ResourceServer.jsp">Resource Server</a></li>
         <li  class="last"><a href="Admin.jsp">Admin</a></li>
      </ul>
    </div>
    <div id="search">
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
      <h2>Client Login Here</h2>
      <form action="ClientLAction.jsp" method="post">
          <table>
              <tr><th>UserName</th><td><input type="text" name="uname" required=""></tD></tr>
              <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
              <tr><th></th><td><input type="submit" value="Login">
                  
                      <a href="ClientRegister.jsp">Register</a>
                  </tD></tr>
          </table>
      </form>
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      <h1>About The Project</h1>
     
      <p align="justify">
     The  demand  for  remote  data  storage  and  compu-tation  services  is  increasing  exponentially  in  our  data-driven society; thus, the need for secure access to such data and services.In  this  paper,  we  design  a  new  biometric-based  authenticationprotocol  to  provide  secure  access  to  a  remote  (cloud)  server.  Inthe  proposed  approach,  we  consider  biometric  data  of  a  useras  a  secret  credential.  We  then  derive  a  unique  identity  fromthe  user’s  biometric  data,  which  is  further  used  to  generatethe   user’s   private   key.   In   addition,   we   propose   an   efficientapproach to generate a session key between two communicatingparties   using   two   biometric   templates   for   a   secure   messagetransmission.  In  other  words,  there  is  no  need  to  store  theuser’s  private  key  anywhere  and  the  session  key  is  generatedwithout   sharing   any   prior   information.   A   detailed   Real-Or-Random  (ROR)  model  based  formal  security  analysis,  informal(non-mathematical)  security  analysis  and  also  formal  securityverification using the broadly-accepted Automated Validation ofInternet Security Protocols and Applications (AVISPA) tool revealthat  the  proposed  approach  can  resist  several  known  attacksagainst (passive/active) adversary. Finally, extensive experiments and  a  comparative  study  demonstrate  the  efficiency  and  utilityof the proposed approach.     
          
          
      </p>
      
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
      <p class="fl_left">Designing Secure and Efficient Biometric-BasedSecure Access Mechanism</p>
       <br class="clear" />
    </div>
    <div class="clear"></div>
  </div>
</div>
</body>
</html>