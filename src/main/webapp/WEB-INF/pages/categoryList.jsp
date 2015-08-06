<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 06.08.15
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
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
<body>
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
</body>
</html>
