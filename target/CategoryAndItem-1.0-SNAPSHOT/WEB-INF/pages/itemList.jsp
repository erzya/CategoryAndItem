<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 06.08.15
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>

<div>
  <div>
    <h1>Item</h1>
    <c:if test="${!empty items}">
      <table>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Category</th>
          <th>Delete</th>
        </tr>
        <c:forEach items="${items}" var="item">
          <tr>
            <td><c:out value='${item.id}'/></td>
            <td><c:out value='${item.name}'/></td>
            <td><c:out value="${item.category.name}"/> </td>
            <td><a href="/deleteItem/${item.id}">Delete</a> </td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
  </div>
  <a href="addItem">Add Item</a>
</div>

</body>
</html>
