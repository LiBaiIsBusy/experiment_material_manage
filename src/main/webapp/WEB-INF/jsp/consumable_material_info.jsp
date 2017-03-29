<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>耗材信息</title>
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
  <h2>耗材信息</h2>

  <div id="info" style="overflow:scroll;width: 620px;height: 300px">
    <table border="1" cellspacing="0" width="600">
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
        <td>140</td>
        <td>300</td>
        <td>100</td>
      </tr>
      <tr>
        <td>002</td>
        <td>交换机</td>
        <td>13</td>
        <td>20</td>
        <td>5</td>
      </tr>

      <tr>
        <td>003</td>
        <td>扫描仪</td>
        <td>8</td>
        <td>20</td>
        <td>5</td>
      </tr>
      <tr>
        <td>004</td>
        <td>打印机</td>
        <td>8</td>
        <td>20</td>
        <td>4</td>
      </tr>
      <tr>
        <td>005</td>
        <td>刻录机</td>
        <td>50</td>
        <td>200</td>
        <td>30</td>
      </tr>
      <tr>
        <td>006</td>
        <td>路由器</td>
        <td>5</td>
        <td>20</td>
        <td>5</td>
      </tr>
      <tr>
        <td>007</td>
        <td>路由器</td>
        <td>5</td>
        <td>20</td>
        <td>5</td>
      </tr>
      <tr>
        <td>008</td>
        <td>路由器</td>
        <td>5</td>
        <td>20</td>
        <td>5</td>
      </tr>
      <tr>
        <td>009</td>
        <td>路由器</td>
        <td>5</td>
        <td>20</td>
        <td>5</td>
      </tr>
      <tr>
        <td>010</td>
        <td>路由器</td>
        <td>5</td>
        <td>20</td>
        <td>5</td>
      </tr>
      <tr>
        <td>011</td>
        <td>路由器</td>
        <td>5</td>
        <td>20</td>
        <td>5</td>
      </tr>
      <tr>
        <td>012</td>
        <td>路由器</td>
        <td>5</td>
        <td>20</td>
        <td>5</td>
      </tr>
      </tbody>
    </table>
  </div>
  <label for="number">记录总数:</label>
  <input type="text" id="number" placeholder="12"/>
  <a href="index.html"><input type="button" value="确定"/></a>
</div>
</body>
</html>
