<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>库存预警</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: darkcyan;
    }

    .main {
      width: 620px;
      height: 520px;
      margin: 40px auto;
      background-color: darkgray;
      text-align: center;
      padding: 5px;
    }

    fieldset {
      padding-left: 80px;
    }

    input {
      margin-top: 15px;
    }
  </style>
</head>
<body>
<div class="main">
  <h3>库存预警</h3>

  <form action="#">
    <fieldset>
      <legend>低于最低预警线的耗材</legend>
      <h5>下列耗材库存过低 请及时购买入库</h5>

      <div style="overflow:scroll;width: 430px;height: 100px">
        <table border="1" cellspacing="0" width="400">
          <tbody>
          <tr>
            <td>耗材编号</td>
            <td>耗材名称</td>
            <td>当前库容</td>
            <td>最大库容</td>
            <td>最小库容</td>
          </tr>
          <tr>
            <td>001</td>
            <td>计算机</td>
            <td>50</td>
            <td>300</td>
            <td>100</td>
          </tr>
          </tbody>
        </table>
      </div>
    </fieldset>
    <fieldset>
      <legend>高于于最高预警线的耗材</legend>
      <h5>下列耗材库存过盛 请尽快出库销售</h5>

      <div style="overflow:scroll;width: 430px;height: 100px">
        <table border="1" cellspacing="0" width="400">
          <tbody>
          <tr>
            <td>耗材编号</td>
            <td>耗材名称</td>
            <td>当前库容</td>
            <td>最大库容</td>
            <td>最小库容</td>
          </tr>
          <tr>
            <td>001</td>
            <td>计算机</td>
            <td>450</td>
            <td>300</td>
            <td>100</td>
          </tr>
          </tbody>
        </table>
      </div>
    </fieldset>
    <a href="index.html"><input type="button" value="确定" id="btn"/></a>
  </form>
</div>
</body>
</html>
