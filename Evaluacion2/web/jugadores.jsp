<%-- 
    Document   : Jugadores
    Created on : 13/07/2020, 09:40:20 PM
    Author     : amaru
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit-icons.min.js"></script>
        <title>Jugadores</title>
    </head>
    <body>
        <nav class="uk-navbar-container" uk-navbar>
            <div class="uk-navbar-center">
                <ul class="uk-navbar-nav">
                    <li class="uk-nav-header ">Gestor de</li>
                    <li><a href="#">Equipos</a></li>
                    <li class="uk-active"><a href="jugadores.jsp">Jugadores</a></li>
                    <li><a href="estadios.jsp">Estadios</a></li>
                    <li><a href="divisiones.jsp">Divisiones</a></li>
                    <li><a href="ciudades.jsp">Ciudades</a></li>
                    <li><a href="posiciones.jsp">Posiciones</a></li>
                    <li><a href="usuarios.jsp">Usuarios</a></li>
                </ul>
            </div>
        </nav>
        <h3>Jugadores Registrados</h3>
        <table class="uk-table uk-table-divider">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Edad</th>
                    <th>Posici�n</th>
                    <th>Sueldo Anual</th>
                    <th>Equipo Actual</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="modificarJugador.jsp?cod=<%=  %>">
                        <input type="button" value="Modificar"/>
                        </a>
                    </td>
                    <td><a href="eliminarJugador.jsp?id=<%=  %>">
                            <input type="button" value="Eliminar"/>
                        </a>
                    </td>       
                </tr>
            </tbody>
        </table>
    </body>
</html>
