<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="0" width="1000" align="center" >
            <tr bgcolor="skyblue">
                <th><a href="index.jsp">Catalogo</a></th>
                <th><a href="registrarProducto.jsp">Registrar Producto</a></th>
                <th><a href="registrarVenta.jsp">Registrar Ventas</a></th>
                <th><a href="consultarVentas.jsp">Consultar Ventas</a></th>
                <th><a href="SerletLogueo?accion=cerrar.jsp">Cerrar Sesion</a></th>
                <th width="200"></th>                
            </tr>
        </table>
        <h2 align="center">Catalogo de Productos</h2>
        <table border="0" align="center" width="1000">
            <%
                ArrayList<Producto> lista = ProductoDB.obtenerProducto();
                int salto = 0;
                for (Producto p : lista) {
            %>
            <th><img src="img/<%=p.getImagen()%>" width="140" height="140"><p>
                    <%=p.getNombre()%><br>
                    <%=p.getPrecio()%><p>
                    <a href="">Modificar</a> //
                    <a href="anadirCarrito.jsp?id=<%= p.getCodigoproducto()%>">Añadir</a>
            </th>
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
