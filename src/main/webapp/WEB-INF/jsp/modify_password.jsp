<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>密码修改</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: darkcyan;
    }

    .main {
      width: 400px;
      height:210px;
      margin: 180px auto;
      background-color: darkgray;
      text-align: center;
      padding: 5px;
    }
    input{
      margin-top: 10px;
    }
  </style>
</head>
<body>
<div class="main">
  <form action="#">
    <h3>密码修改</h3>
    <fieldset>
      <legend>设置新密码</legend>
      <label for="psd">新密码：</label><input type="text" id="psd"/><br/>
      <label for="again">重输：</label><input type="text" id="again"/>
    </fieldset>
    <input type="button" value="确定"/>
    <a href="index.html"><input type="button" value="退出"/></a>
  </form>
</div>
</body>
</html>
