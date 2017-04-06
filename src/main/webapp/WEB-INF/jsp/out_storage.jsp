<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>出库信息</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: darkcyan;
    }

    .main {
      width: 600px;
      height: 420px;
      margin: 80px auto;
      background-color: darkgray;
      text-align: center;
      padding: 5px;
    }

    #info {
      margin-bottom: 18px;
    }

    #number {
      margin-right: 160px;
    }

  </style>
</head>
<body>
<div class="main">
  <h2>出库信息</h2>

  <div id="info" style="overflow:scroll;width: 620px;height: 300px">
    <table border="1" cellspacing="0" width="600">
      <tbody>
      <tr>
        <td>耗材编号</td>
        <td>耗材名称</td>
        <td>出库数量</td>
        <td>出库日期</td>
      </tr>
      <c:forEach items="${recordList }" var="record" varStatus="i">
        <tr>
          <td>${record.productCode}</td>
          <td>${record.productName}</td>
          <td>${record.updateNumber}</td>
          <td><fmt:formatDate value="${record.updateDate}" pattern="yyyy-MM-dd" /></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
  <label for="number">记录总数:</label>
  <input type="text" id="number" placeholder="${totalNumber}"/>
  <a href="${ctx}/main/index"><input type="button" value="确定"/></a>
</div>
</body>
</html>
