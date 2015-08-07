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
      <table border="1" bgcolor="black" width="600px">
        <tr style="background-color: teal; color: white; text-align: center;"
            height="40px">
          <th>Id</th>
          <th>Name</th>
          <th>Category</th>
          <th>Delete</th>
        </tr>
        <c:forEach items="${items}" var="item">
          <tr style="background-color: white; color: black; text-align: center;"
              height="30px">
            <td><c:out value='${item.id}'/></td>
            <td><c:out value='${item.name}'/></td>
            <td><c:out value="${item.category.name}"/> </td>
            <td><a href="/deleteItem/${item.id}">Delete</a> </td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
  </div>
</div>

</body>
</html>
