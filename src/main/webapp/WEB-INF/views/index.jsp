<%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/25/18
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator</title>
    <style>
      .wrapper{
        width: 45%;
        margin: 0 auto;
      }
    </style>
  </head>
  <body>
    <div class="wrapper">
      <h1>Calculator App</h1>
      <form method="post">
        <table>
          <tr>
            <td><input type="text" name="firstnum" placeholder="Enter first number"></td>
            <td><input type="text" name="secondnum" placeholder="Enter second number"></td></td>
          </tr>
          <tr>
            <td><button name="operator" type="submit" value="+">Addition(+)</button></td>
            <td><button name="operator" type="submit" value="-">Subtraction(-)</button></td>
          </tr>
          <tr>
            <td><button name="operator" type="submit" value="*">Multiplication(*)</button></td>
            <td><button name="operator" type="submit" value="/">Divition(/  )</button></td>
          </tr>
        </table>
        <%
          if(request.getAttribute("result")!=null){
              out.print("<b>Result: "+request.getAttribute("result")+"</b>");
          }

        %>
      </form>
    </div>
  </body>
</html>
