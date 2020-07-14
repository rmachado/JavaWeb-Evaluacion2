<%-- 
    Document   : modificarUsuario
    Created on : 11/07/2020, 07:54:12 PM
    Author     : amaru
--%>

<%@page import="dao.UsuarioDAO"%>
<%@page import="modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- UIkit CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/css/uikit.min.css" />

        <!-- UIkit JS -->
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit-icons.min.js"></script>
        <title>Modificar Usuario</title>
    </head>
    <body>
    <% if(session.getAttribute("usuario")== null){
             response.sendRedirect("index.jsp?msj=acceso denegado");}%>
    <center>

        <% Usuario u = new Usuario(); 
          if(request.getParameter("run")!= null){
              UsuarioDAO ud = new UsuarioDAO();
             if(ud.obtenerUsuario(request.getParameter("run"))!=null){
                 u = ud.obtenerUsuario(request.getParameter("run"));
             }
          }
        %>
        
           
        <form action="ControladorUsuario" method="post">
            <fieldset class="uk-fieldset">
                <div>
                <legend class="uk-legend">Modificar Usuario</legend>
                </div><br /><br />
                <div>
                    Run
                    <input class="uk-input uk-form-width-large" type="text" name="run" readonly="true" value="<%= u.getRun() %>">
                </div><br />
                <div>
                    Nombre
                    <input class="uk-input uk-form-width-large" type="text" name="nombre" value="<%= u.getNombre() %>">
                </div><br />
                <div>
                    Apellido
                    <input class="uk-input uk-form-width-large" type="text" name="apellido" value="<%= u.getApellido() %>">
                </div><br />
                <div>
                    Password
                    <input class="uk-input uk-form-width-large" type="password" name="password" value=""/>
                    <p>Para conservar password dejar vacio</p>
                </div><br />
                <a class="uk-button uk-button-default" href="usuarios.jsp">Modificar</a>
            </fieldset>
            <input type="hidden" name="accion" value="3"/>
        </form>
                <a class="uk-button uk-button-default" href="usuarios.jsp">Cancelar</a>
        </center>
    </body>
</html>
