<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>耗材出库</title>
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
  <form action="#">
    <fieldset>
      <legend>耗材入库信息</legend>
      <label for="name">出库耗材:</label><input type="text" id="name" list="type"/>
      <datalist id='type'>
        <option value=" 计算机">
        <option value=" 交换机">
        <option value=" 扫描仪">
        <option value=" 打印机">
        <option value=" 刻录机">
        <option value=" 路由器">
      </datalist><br/>
      <label for="date">出库时间:</label><input type="date" id="date"/><br/>
      <label for="input">现有数量:</label><input type="number" id="input"/><br/>
      <label for="output">出库数量:</label><input type="number" id="output"/><br/>
      <input type="button" value="确定"/>
      <a href="index.html"><input type="button" value="退出" id="exit"/></a>
    </fieldset>
  </form>
</div>
</body>
</html>
