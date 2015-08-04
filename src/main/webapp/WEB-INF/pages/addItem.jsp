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

  <%--<script>
    $(document).ready(function() {
      var mydiv1 = document.getElementById("categList");

      $('#categoryList').click(function(event) {
        var $temp = this;

        $.getJSON('/categoryList', function(data) {
          console.log("t1 "+ data);
          console.log(data.headlines);
          $.each(data, function (index, obj) {

            console.log(obj.id + " tesst "+ obj.name + index);
//            var optionTag = document.createElement('option');
//            optionTag.setAttribute('value',obj.id);
//            optionTag.innerHTML = obj.name;
//            mydiv1.appendChild(optionTag);
          });
        });
      });

    });
  </script>--%>
</head>
<body>


<h1>Add Item</h1>
<form:form method="post" action="addItem" commandName="item">
  <table>
    <tr>
      <td><form:label path="name">Name</form:label></td>
      <td><form:input path="name"/></td>
    </tr>
    <tr>
      <td><form:label path="category">Category</form:label></td>
      <td><form:input path="name" id ="categoryList"/>


<%--    <tr>

            <td><c:out value='${category.itemSet}' default="neme"/></td>

    </tr>--%>



      </td>

    </tr>
    <tr>
      <td colspan="1"><input type="submit" value="Add Item"/></td>
    </tr>
  </table>
</form:form>

</body>
</html>