<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ejercicios.array02"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String[] nombres = {"nombre 1","nombre 2", "nombre 3"};
String[] edades = {"12", "23", "54"};
String nombre=null;
String edad=null;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>array</title>
</head>
<body>
<table>
<tr>
<td>Titulo</td>
<td>2</td>
</tr>
<tr>
<td>Autor</td>
<td>4</td>
</tr>
</table>
<%
int i = 0;
for (i=0;i<nombres.length; i++){
	nombre = nombres[i];
	edad = edades[i];
	out.print(nombre+", "+ edad+"<br/>");
}
%> 


</body>
</html>