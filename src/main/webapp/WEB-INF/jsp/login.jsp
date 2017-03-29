<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>登录界面</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: darkcyan;
    }

    .login {
      margin: 200px auto;
      width: 400px;
      height: 200px;
      background-color: darkgray;
      text-align: center;
      padding: 10px;
    }

    #password {
      margin: 20px 0;
    }
  </style>
</head>
<body>
<div class="login">
  <h2>实验室耗材管理系统</h2>

  <form action="">
    <label for="username">用户名:</label><input type="text" id="username"/><br/>
    <label for="password">密码:</label><input type="text" id="password"/><br/>
    <input type="button" value="登录" id="login"/> &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="取消" id="exit"/>
  </form>
</div>
<script>
  var login = document.getElementById('login');
  var exit = document.getElementById('exit');
  var uname = document.getElementById('username');
  var psd = document.getElementById('password');

  login.onclick = function () {
    if (uname === 'admin' && psd === '123') {

    }
  }
  exit.onclick = function () {
    uname.value = '';
    psd.value = '';
  }
</script>
</body>
</html>
