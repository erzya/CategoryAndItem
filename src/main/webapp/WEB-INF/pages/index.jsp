<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 01.08.15
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Categories</title>
</head>
<body>
  <div>
    <h1>Categories</h1>
    <c:if test="${!empty categories}">
      <table>
        <tr>
          <th>Id</th>
          <th>Name</th>
        </tr>
        <c:forEach items="${categories}" var="categoryk">
          <tr>
            <td><c:out value='${categoryk.id}' default="2"/></td>
            <td><c:out value='${categoryk.name}' default="neme"/></td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
  </div>

</body>
</html>
