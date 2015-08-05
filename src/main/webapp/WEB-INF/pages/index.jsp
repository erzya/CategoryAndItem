<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 01.08.15
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Categories</title>
  <style>
    ul.cssMenu, ul.cssMenu ul
        {
        list-style:none;
        margin:0; padding:0;
        position: relative;

        }
    ul.cssMenu ul
    {
      opacity: 1;
      display:none; /*initially menu item is hidden*/
      position: absolute; /*absolute positioning is important for menu to float*/
      left: 110px;
    }
    #temp{
      float: left;

    }
    ul.cssMenu li:hover > ul
    {
      cursor: pointer;
    display:inline-block;
      backface-visibility: hidden;
      background-color: darkgray;
      position: absolute;


      opacity: 1;
    }
  </style>
</head>


<jsp:include page="/addCategory">
  <jsp:param value="${category}" name="category" />
</jsp:include>

    <div>
    <h1>Categories</h1>
    <c:if test="${!empty categories}">
      <table>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Items</th>
          <th>Delete</th>

        </tr>
        <c:forEach items="${categories}" var="categoryk">
          <tr>
            <td><c:out value='${categoryk.id}'/></td>
            <td><c:out value='${categoryk.name}'/>
              <td>
              <ul class="cssMenu">
                <li>
                  <a>Items</a>
                  <ul>
                    <li id = "temp"><a href="#">
                        <c:forEach items="${categoryk.itemSet}" var="itemSet">
                        <a>${itemSet.name}</a>
                        </c:forEach>
                    </li>

                  </ul>
                </li>

              </ul>
            </td>
            <%--<td><a href="/update/">Edit</a> </td>--%>
            <td><a href="/deleteCategory/${categoryk.id}">Delete</a> </td>
          </tr>
        </c:forEach>
      </table>
    </c:if>
    </div>


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
