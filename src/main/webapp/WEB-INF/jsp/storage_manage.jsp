<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>库存管理界面</title>
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
      </tbody>
    </table>
  </div>
  <form action="#" class="right">
    <fieldset>
      <legend>操作</legend>
      <label for="number">耗材编号:</label><input type="text" id="number"/><br/>
      <label for="name">耗材名称:</label><input type="text" id="name"/><br/>
      <label for="max">最大库容:</label><input type="number" id="max"/><br/>
      <label for="min">最小库容:</label><input type="number" id="min"/><br/>
    </fieldset>
  </form>
  <div class="buttons left">
    <input type="button" value="增加"/>
    <input type="button" value="修改"/>
    <input type="button" value="删除"/>
    <a href="index.html"><input type="button" value="退出"/></a>
  </div>
</div>
</body>
</html>
