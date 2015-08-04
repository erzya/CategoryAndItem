<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 01.08.15
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Categories</title>
</head>
<body>

<c:url var="addCategory" value="/addCategory" ></c:url>

   <div>
     <h1>Add Category</h1>
      <form:form method="post" action="${addCategory}" commandName="addCategory">
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
   </div>
    <div>

    <h1>Categories</h1>
    <c:if test="${!empty categories}">
      <table>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <%--<th>Edit</th>--%>
          <th>Delete</th>

        </tr>
        <c:forEach items="${categories}" var="categoryk">
          <tr>
            <td><c:out value='${categoryk.id}' default="2"/></td>
            <td><c:out value='${categoryk.name}' default="neme"/></td>
            <%--<td><a href="/update/">Edit</a> </td>--%>
            <td><a href="/deleteCategory/${categoryk.id}">Delete</a> </td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
  </div>
<a href="addCategory">Add Category</a>

<%--
<div>
  <div>
    <h1>Item</h1>
    <c:if test="${!empty items}">
      <table>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Category</th>
            &lt;%&ndash;<th>Edit</th>&ndash;%&gt;
          <th>Delete</th>

        </tr>
        <c:forEach items="${items}" var="item">
          <tr>
            <td><c:out value='${item.id}'/></td>
            <td><c:out value='${item.name}'/></td>
            <td><c:out value="${item.category.name}"/> </td>
              &lt;%&ndash;<td><a href="/update/">Edit</a> </td>&ndash;%&gt;
            <td><a href="/deleteItem/${item.id}">Delete</a> </td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
  </div>
  <a href="addItem">Add Item</a>
--%>

 <%-- <div>
  <h1>Add Item</h1>
  <form:form method="post" action="addItem" commandName="items">
    <table>
      <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name"/></td>
      </tr>
      <tr>
        <td><form:label path="category">Category</form:label></td>
        <td>
          <select id="categList">
            <c:forEach items="${items}" var="item">
              <option><c:out value='${item.name}'/></option>
            </c:forEach>
          </select>
        </td>

      </tr>
      <tr>
        <td colspan="1"><input type="submit" value="Add Item"/></td>
      </tr>
    </table>
  </form:form>
  </div>--%>

</body>
</html>
