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
      <label for="productName">入库耗材:</label><input type="text" name="productName" id="productName" list="type"/>
      <datalist id='type'>
        <option value=" 计算机">
        <option value=" 交换机">
        <option value=" 扫描仪">
        <option value=" 打印机">
        <option value=" 刻录机">
        <option value=" 路由器">
      </datalist><br/>
      <label for="updateDate">入库时间:</label><input type="date" name="updateDate" id="updateDate"/><br/>
      <label for="updateNumber">入库数量:</label><input type="number" name="updateNumber" id="updateNumber"/><br/>
      <label for="price">入库价格:</label><input type="text" name="price" id="price"/><br/>
      <input type="hidden" name="type" value="RK"/>
      <input type="button" onclick="addRecord();" value="确定"/>
      <a href="${ctx}/main/index"><input type="button" value="退出" id="exit"/></a>
    </fieldset>
  </form>
</div>
</body>
<script type="text/javascript" src="${ctx}/js/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript">
  function addRecord() {

    $.post(
            "${ctx}/record/addRecord",
            $("#recordForm").serialize(),
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

</script>
</html>
