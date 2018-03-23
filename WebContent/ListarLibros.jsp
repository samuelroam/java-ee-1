<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelo.Libro"%>
    <%@ page import="modelo.LibroModelo" %>
    
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.Iterator" %>
    <%
    LibroModelo libroModelo = new LibroModelo();
    ArrayList<Libro> libros = libroModelo.selectAll();
    
    
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Iterator<Libro> i = libros.iterator();
while(i.hasNext()){
	Libro libro = i.next();
	%>
	<table>
		<tr>
			<td>numero</td>
			<td>titulo</td>
			<td>autor</td>
		</tr>
	<%
	out.println("<tr>");
	out.println("<td>"+libro.getId()+"</td>");
	out.println("<td>"+libro.getTitulo()+"</td>");
	out.println("<td>"+libro.getAutor()+"</td>");
	out.println("</tr>");
}
%>
	</table>
</body>
</html>