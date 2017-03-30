<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>登录界面</title>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <c:set var="contextpath" value="${pageContext.request.contextPath}" />
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
  <label for="userName">用户名:</label><input type="text" id="userName"/><br/>
  <label for="password">密码:</label><input type="password" id="password"/><br/>
  <input type="button" value="登录" id="login" onclick="login();"/>
  <input type="button" value="取消" id="exit" onclick="exit();"/>
</div>
</body>
<script type="text/javascript" src="${contextpath}/js/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript">
  function login() {
    var userName = $("#userName").val();
    var password = $("#password").val();
    if(userName==''||password==''){
      alert("用户名和密码不能为空");
      return;
    }
    $.post(
            "${contextpath}/main/login",
            { userName: userName, password: password},
            function(data){
              if(data.success){
                alert("登陆成功")
                location.href ="${contextpath}/main/index?userId="+data.data.id;
              }else {
                alert(data.error);
              }
            });
  }
  function exit() {
    $("#userName").val("")
    $("#password").val("")
  }
</script>
</html>
