<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>库存管理界面</title>
  <c:set var="ctx" value="${pageContext.request.contextPath}" />
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: darkcyan;
    }

    .main {
      width: 720px;
      height: 450px;
      margin: 80px auto;
      background-color: darkgray;
      text-align: center;
      padding: 5px;
    }

    .left {
      float: left;
    }

    .right {
      float: right;
    }

    table {
      background: whitesmoke;
    }

    fieldset {
      width: 250px;
    }

    input {
      margin-top: 30px;
    }

    .buttons {
      width: 100%;
      height: 30px;
      margin-top: 30px;
    }

    .buttons input {
      width: 60px;
      height: 30px;
      font-size: 18px;
      margin-right: 40px;
    }
  </style>
</head>
<body>
<div class="main">
  <h2>库存管理</h2>

  <div class="left" style="overflow:scroll;width: 420px;height: 230px">
    <table border="1" cellspacing="0" width="400">
      <tbody>
      <tr>
        <td>耗材编号</td>
        <td>耗材名称</td>
        <td>当前库容</td>
        <td>最大库容</td>
        <td>最小库容</td>
      </tr>
      <c:forEach items="${stocks }" var="stocks" varStatus="i">
        <tr>
          <td>${stocks.productCode}</td>
          <td>${stocks.productName}</td>
          <td>${stocks.currentNumber}</td>
          <td>${stocks.maxNumber}</td>
          <td>${stocks.miniNumber}</td>
        </tr>
      </c:forEach>

      </tbody>
    </table>
  </div>
  <form action="#" class="right" id="stockForm">
    <fieldset>
      <legend>操作</legend>
      <label >耗材编号:</label><input type="text" id="productCode" name="productCode"/><br/>
      <label >耗材名称:</label><input type="text" id="productName" name="productName"/><br/>
      <label >最大库容:</label><input type="number" id="maxNumber" name="maxNumber"/><br/>
      <label >最小库容:</label><input type="number" id="miniNumber" name="miniNumber"/><br/>
      <li style="font-size: small;color: red">请将表单填写完整，否则无法提交</li>
    </fieldset>
  </form>
  <div class="buttons left">
    <input type="button" value="增加" onclick="addStock();"/>
    <input type="button" value="修改" onclick="updateStock();"/>
    <input type="button" value="删除" onclick="deleteStock();"/>
    <a href="${ctx}/main/index"><input type="button" value="退出"/></a>
  </div>
</div>
</body>
<script type="text/javascript" src="${ctx}/js/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript">
  function addStock() {

    $.post(
        "${ctx}/stock/addStock",
        $("#stockForm").serialize(),
        function (data) {
          if (data.success){
            alert("增加成功");
            location.href ="${ctx}/stock/toStockManage";
          }else {
            alert(data.error);
          }
        }
    );
  }
  function updateStock() {
    $.post(
            "${ctx}/stock/updateStock",
            $("#stockForm").serialize(),
            function (data) {
              if (data.success){
                alert("修改成功");
                location.href ="${ctx}/stock/toStockManage";
              }else {
                alert(data.error);
              }
            }
    );
  }
  function deleteStock() {
    $.post(
            "${ctx}/stock/deleteStock",
            $("#stockForm").serialize(),
            function (data) {
              if (data.success){
                alert("删除成功");
                location.href ="${ctx}/stock/toStockManage";
              }else {
                alert(data.error);
              }
            }
    );
  }
</script>
</html>
