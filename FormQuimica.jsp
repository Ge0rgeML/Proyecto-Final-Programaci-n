<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="estilos.css">
<title>Registro en el Curso de Qu�mica y Biolog�a</title>
</head>
<body>
 <form>
  
  
  <h1>�Registro exitoso!</h1>
  <p>Los datos fueron insertados correctamente.</p>

  <a href="">Pagina de Inicio</a>
  </form>
   <%
   
   String nombreQ = request.getParameter("nombreQ");
   String cedulaQ = request.getParameter("cedulaQ");
   String fechainicioQ = request.getParameter("fechainicioQ");
    
   
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/solociencia","root","");
        Statement dbstatement = dbconect.createStatement();
        String insertarsql = "INSERT INTO registroquimica (nombreQ,cedulaQ,fechainicioQ) VALUES ('"+nombreQ+"','"+cedulaQ+"','"+fechainicioQ+"')";
        dbstatement.executeUpdate(insertarsql);
        out.print("Registro realizado");
         %>
</body>
</html>
