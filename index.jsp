<%-- 
    Document   : index
    Created on : 15-jul-2020, 11:04:28
    Author     : uidos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="clases.Gato" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>¡Hola Mundo! - JSP Page</title>
        <link rel="stylesheet" type="text/css" href="estilos.css" />
    </head>
    <body>
        <h1>¡Hola Mundo!</h1>
        <h2>Pasando una cadena de caracteres</h2>

        <form method="post" action="00intro/frase.jsp">
            Introduzca el nombre de una fruta:
            <input type="text" name="cadenaIntro">
            <input type="submit" value="OK">
        </form>

        <form method="get" action="00intro/incrementa5.jsp">
            Introduzca un número (puede tener decimales):
            <input type="text" name="numeroIntro">
            <input type="submit" value="Suma5">
        </form>

        <h1>Supercalculadora</h1>
        <form method="get" action="00intro/resultado.jsp">
            x <input type="text" name="x"/></br>
            y <input type="text" name="y"/></br>
            <input type="submit" value="dale">
        </form>

        <form method="post" action="00intro/animales.jsp">
            Seleccione animal a visualizar
            <select name="animal">
                <option>Gato</option>
                <option>Caracol</option>
            </select>
            </br>
            Número de animales <input type="text" name="numero" size="3">
            </br>
            <input type="submit">
        </form>
        <h1>Gatos con clase</h1>
        <%
          // Creo los gatos
          Gato g1 = new Gato("Pepe", "https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/59c4f5655bafe82c692a7052/gato-marron_0.jpg");
          Gato g2 = new Gato("Garfield", "https://www.ngenespanol.com/wp-content/uploads/2018/08/%C2%BFQu%C3%A9-raza-es-Garfield.jpg");
          Gato g3 = new Gato("Tom", "https://vignette.wikia.nocookie.net/tomyjerry/images/e/ee/Tom_%28gato%29.png/revision/latest/scale-to-width-down/340?cb=20141026114040&path-prefix=es");
          out.println(g1);
          out.println(g2);
          out.println(g3);
          out.println(g1.maulla());
          out.println(g2.come("sardinas"));
        %>

        <br/><br/><br/>
        <a href="00intro/saludo1.jsp">Pincha aquí</a><br>
        <a href="00intro/ejemplotabla.jsp">Pincha aquí para ver Ejemplo Tabla</a><br>
    </body>
</html>
