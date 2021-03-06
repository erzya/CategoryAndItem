<%@ page import="com.model.Item" %>
<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 03.08.15
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Add Item</title>

  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="json-jquery.js" type="text/javascript"></script>

</head>
<body>
<h1>Add Item</h1>
<form:form method="post" action="addItem" modelAttribute="item">
  <table>
    <tr>
      <td><form:label path="name">Name</form:label></td>
      <td><form:input path="name"/></td>
    </tr>
    <tr>
      <td><form:label path="category.id">Category</form:label></td>
      <td>

          <form:select path="category.id" id="category" items="${categories}" itemValue="id" itemLabel="name"/>
<%--            <form:select path="category" id="category" multiple="true" >
                <c:forEach items="${categories}" var="categor">
                    <form:option value="${categor}" label="${categor.name}"></form:option>
                </c:forEach>
            </form:select>--%>
        </td>

    </tr>
    <tr>
      <td colspan="1"><input type="submit" value="Add Item"/></td>
    </tr>
  </table>
</form:form>

<%--<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/jQuery.js" >

    $(document).ready(function() {
        $('#catSelect').click().switchValue();
    });




    $.fn.switchValue = function(options) {

        var mydiv1 = document.getElementById("clasCat");
        var $temp = this;
        console.log($temp.value());

        var tempVal = $temp.value();
        console.log(tempVal);
        mydiv1.set(tempVal);

    };
</script>--%>
</body>
</html>