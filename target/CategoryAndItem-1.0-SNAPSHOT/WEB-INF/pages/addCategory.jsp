<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 03.08.15
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
</head>
<body>
<h1>Add Category</h1>
    <form:form method="post" action="addCategory" commandName="category">
      <table>
        <tr>
          <td><form:label path="name">Name</form:label></td>
          <td><form:input path="name"/></td>
        </tr>
        <tr>
          <td colspan="1"><input type="submit" value="Add Category"/></td>
        </tr>
      </table>
    </form:form>

</body>
</html>
