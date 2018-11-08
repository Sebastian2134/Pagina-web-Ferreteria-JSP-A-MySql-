<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de Compra</title>
    </head>
    <body>
           <table border="0" align="center" width="1000">
               <h2>hola</h2>
        <%
            ProductoDB prod=new ProductoDB();
            int salto = 0;
            
            for(Articulo a: articulos){// buscar datos de productos en el carrito
                
                Producto producto =prod.obtenerProducto(a.getIdProducto());
                response.getWriter().print(a.getIdProducto());
            
        %>
        <th><img src="img/<%=producto.getImagen()%>" width="140" height="140"><p>
                    <%=producto.getNombre()%><br>
                    <%=producto.getPrecio()%><p>
                    <%=a.getCantidad()%>    
            </th>
            <h2>entro</h2>
        <%
                salto++;
                if (salto == 3) {
            %>
            <tr>
            <%
                        salto = 0;
                    }
                }

            %>
        </table>
    </body>
</html>
