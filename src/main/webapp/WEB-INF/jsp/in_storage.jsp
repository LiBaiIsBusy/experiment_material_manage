<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>入库信息</title>
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
        <td>入库数量</td>
        <td>购入价格</td>
        <td>购入日期</td>
      </tr>
      <tr>
        <td>001</td>
        <td>1</td>
        <td>200</td>
        <td>2017/03/06</td>
      </tr>
      <tr>
        <td>002</td>
        <td>2</td>
        <td>400</td>
        <td>2017/03/07</td>
      </tr>
      <tr>
        <td>003</td>
        <td>3</td>
        <td>600</td>
        <td>2017/03/08</td>
      </tr>
      </tbody>
    </table>
  </div>
  <label for="number">记录总数:</label>
  <input type="text" id="number" placeholder="3"/>
  <a href="index.html"><input type="button" value="确定"/></a>
</div>
</body>
</html>
