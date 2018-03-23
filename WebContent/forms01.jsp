<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="modelo.Libro"%>
    <%@ page import="modelo.LibroModelo" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
<tr>
<td>titulo</td>
<td>autor</td>
</tr>
<tr>
<td>
<%

%>
</td>
<td>autor 1</td>
<td><a href="02_array.jsp">ver</a></td>
</tr>
</table>
</body>
</html>


LibroModelo libroModelo = new LibroModelo();
				ArrayList<Libro> libros = libroModelo.selectAll();
				this.mostrarLibros(libros);
				
				
				public void mostrarLibros(ArrayList<Libro> libros){
		Iterator<Libro> i = libros.iterator();
		while(i.hasNext()){
			Libro libro = i.next();
			this.mostrarLibro(libro);
		}
		
	}
	
	public void mostrarLibro(Libro libro){
		System.out.println(libro.getId()+ "\t - "+
				libro.getTitulo()+ "\t - "+
				libro.getAutor());
	}