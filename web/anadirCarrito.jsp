
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.*"%>
<%
    Producto p = ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("id")));
%>
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
        <h2 align="center"> Anadir al carrito</h2>
        <table border="0" width="500" align="center">            
            <form action="agregarproducto" method="post">
                <tr>
                    <th rowspan="5"><img src="img/<%= p.getImagen()%>" width="140" heigth="140"></th>
                    <th>Codigo</th>
                    <th><input type="text" name="txtCodigo" value="<%=p.getCodigoproducto()%>" readonly></th>
                </tr><tr>
                    <th>Nombre</th>
                    <th><input type="text" name="txtNombre" value="<%=p.getNombre()%>" readonly></th>
                </tr><tr>
                    <th>Precio</th>
                    <th><input type="text" name="txtPrecio" value="<%=p.getPrecio()%>" readonly></th>
                </tr><tr>
                    <th>Cantidad</th>
                    <th><input type="number" value="1" min="1" id="txt-cantidad" name="txtCantidad"></th>
                </tr><tr>
                    <th colspan="3"><input type="submit" value="Añadir" name="btnAnadir"></th>
                </tr>     
                </form>
        </table>
    </body>
</html>
