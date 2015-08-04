<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 03.08.15
  Time: 13:43
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
    <h1>Item</h1>
    <c:if test="${!empty items}">
      <table>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <%--<th>Category</th>--%>
            <%--<th>Edit</th>--%>
          <th>Delete</th>

        </tr>
        <c:forEach items="${items}" var="item">
          <tr>
            <td><c:out value='${item.id}' default="2"/></td>
            <td><c:out value='${item.name}' default="neme"/></td>
            <%--<td><c:out value="${item.category}"/> </td>--%>
              <%--<td><a href="/update/">Edit</a> </td>--%>
            <td><a href="/delete/${item.id}">Delete</a> </td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
  </div>
  <a href="addItem">Add Item</a>

</body>
</html>

