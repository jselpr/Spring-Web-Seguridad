<%-- 
    Document   : fichero1
    Created on : 02-jul-2013, 21:25:17
    Author     : odeen
--%>

<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Permite conocer el contexto de seguridad -->
        <%= SecurityContextHolder.getContext().getAuthentication() %>
        <h1><a href="fichero1.jsp">Fichero 1</a></h1>
        <h1><a href="fichero2.jsp">Fichero 2</a></h1>
        <h1><a href="<%= request.getContextPath() %>/jsp/protegido.jsp">Protegido</a></h1>
        <sec:authorize ifAllGranted="ROLE_ADMIN" >
            Usted tiene el rol de administrador <br/>
        </sec:authorize>

        <sec:authorize access="isAnonymous()">
            Restricted data, you are not allowed to access this resource   <br/>
        </sec:authorize>

        <br/>        
        <br/>        
        <br/>        
        hasRole([role]): Returns true if the current principal has the specified role.<br/>
        hasAnyRole([role1,role2]): Returns true if the current principal has any of the supplied roles (given as a comma-separated list of strings)<br/>
        principal: Allows direct access to the principal object representing the current user<br/>
        authentication: Allows direct access to the current Authentication object obtained from the SecurityContext<br/>
        permitAll: Always evaluates to true<br/>
        denyAll: Always evaluates to false<br/>
        isAnonymous(): Returns true if the current principal is an anonymous user<br/>
        isRememberMe(): Returns true if the current principal is a remember-me user<br/>
        isAuthenticated(): Returns true if the user is not anonymous    <br/>
        isFullyAuthenticated(): Returns true if the user is not an anonymous or a remember-me user<br/>
        hasIpAddress('192.168.1.0/24')<br/>
        <br/>

        <c:forTokens items="authorities,credentials,details,principal,authenticated" delims="," var="act">
            <sec:authentication var="valor" property="${act}"/>
            ${act}=${valor}<br/>
        </c:forTokens>
        <br/>
        <br/>

        authorities: collection of GrantedAuthority instances. Corresponds in most case to user roles<br/>
        credentials: user’ credentials (usually password)
        details: object containing the details of the authentication process itself. The content of this object depends on the implementation of the Authentication interface. The default implementation returns null<br/>
        principal: the principal object, which is most of the time an instance of the UserDetails interface<br/>
        authenticated: return true or false whether the use is authenticated or not<br/>


    </body>
</html>
