<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>耗材入库</title>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <c:set var="ctx" value="${pageContext.request.contextPath}" />
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: darkcyan;
    }

    .main {
      width: 500px;
      height: 260px;
      margin: 180px auto;
      background-color: darkgray;
      text-align: center;
      padding: 5px;
    }

    input {
      margin-top: 20px;
    }
    #exit{
      margin-left: 30px;
    }
  </style>
</head>
<body>
<div class="main">
  <form action="#" id="recordForm">
    <fieldset>
      <legend>耗材入库信息</legend>
      <label for="productName">入库耗材:</label>
      <select id="productName" name="productName" onchange="changeProduct()" style="margin-top: 20px;width: 173px;height: 21px">
        <c:forEach var="stockList" items="${stockList }">
          <option value='${stockList.productCode}'>
              ${stockList.productName}
          </option>
        </c:forEach>
      </select><br/>
      <label for="updateDate">入库时间:</label><input type="date" name="updateDate" id="updateDate" style="width: 173px"/><br/>
      <label for="updateNumber">入库数量:</label><input type="number" name="updateNumber" id="updateNumber"/><br/>
      <label for="price">入库价格:</label><input type="text" name="price" id="price"/><br/>
      <input type="hidden" name="type" id="type" value="RK"/>
    </fieldset>
  </form>
  <input type="button" onclick="addRecord();" value="确定"/>
  <a href="${ctx}/main/index"><input type="button" value="退出" id="exit"/></a>
</div>
</body>
<script type="text/javascript" src="${ctx}/js/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript">
  function addRecord() {
    var productName = $("#productName").val();
    var price = $("#price").val();
    var updateDate = $("#updateDate").val();
    var updateNumber = $("#updateNumber").val();
    var type = $("#type").val();
    if (productName==''||price==''||updateDate==''||updateNumber==''||type==''){
      alert("请将表单填写完整");
      return;
    }
    $.post(
            "${ctx}/record/addRecord",
            $("#recordForm").serialize(),
            function (data) {
              if (data.success){
                alert("入库成功");
                location.href ="${ctx}/main/index";
              }else {
                alert(data.error);
              }
            }
    );
  }

</script>
</html>
