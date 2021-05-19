<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Profil ve Ayarlar</title>
        <link href="../Profil-Ayar/Profilayar.css" rel="stylesheet"  />
        
    </head>
    <body>
    <%@ include file="../homepage/logout_header.jsp" %>
   <div class="menu" >
<%@ include file="../homepage/menu.jsp" %>
</div>
<%

String userId = request.getParameter("userId");
String userEpost = request.getParameter("userEpost");
String userName = request.getParameter("userName");
String userSurname = request.getParameter("userSurname");
String userPhone = request.getParameter("userPhone");
%>
<div class="ilkclass">
         <div>
            <h1 class="baslik">Profil ve Ayarlar</h1>
     
        </div>   
        <hr/>
        
        
        
        <div>
            
            <div>
                
                
                <h4 class="baslik2">Hesap Bilgileriniz</h4>
                    
                <hr class="cizgi">
                 <br>
                 <table>
                 
                 <tr>
                            <td ><label class="yazi"><b>Kullanici Id:</b> <% out.println(userId);%></label></td>
                            
                        </tr>
                        
                 <tr>
                            <td ><label class="yazi" ><b>E-mail:</b> <% out.println(userEpost);%></label></td>
                            
                        </tr>
                       
                 
                    </table>
                    <h4 class="baslik2">Kisisel Bilgileriniz</h4>
                
                       <hr class="cizgi">
                           <br>
                    <table>
                        <tr>
                            <td ><label class="yazi"><b>Ad: </b><% out.println(userName);%></label></td>
                            
                        </tr>
                        <tr>
                            <td ><label for="Soyad" class="yazi"><b>Soyad: </b><% out.println(userSurname);%></label></td>
                          
                        </tr>
                        <tr>
                            <td ><label class="yazi"><b>Telefon Numarasi:</b> <% out.println(userPhone);%></label></td>
                            
                        </tr>
                         
                           

                    </table>
<div  >
           
                    
                <a href="../Profil-Ayar/NewFile.jsp?userId=<%=session.getAttribute("userId")%>" >    <button class="buton1"> <b>Change Password</b></button> </a>

              <form method="get" action="Sifreniz gunncellendi">   </form>
                
          </div>             
              
                
            </div>
            <div>
                
            </div>
            
            
        </div>
        </div>
       <%@ include file="../homepage/footer.jsp" %>

    </body>
</html>