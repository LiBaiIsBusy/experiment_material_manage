<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>密码修改</title>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <c:set var="ctx" value="${pageContext.request.contextPath}" />
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
      <input type="hidden" value="${userId}" id="userId">
      <label for="newPassword">新密码：</label><input type="password" id="newPassword"/><br/>
      <label for="newPassword2">重输：</label><input type="password" id="newPassword2"/>
    </fieldset>
    <input type="button" value="确定" onclick="sure();"/>
    <a href="${ctx}/main/index"><input type="button" value="退出"/></a>
  </form>
</div>
</body>
<script type="text/javascript" src="${ctx}/js/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript">
  function sure() {
    var newPassword = $("#newPassword").val();
    var newPassword2 = $("#newPassword2").val();
    if(newPassword2!=newPassword){
      alert("两次密码不一致，请核对");
      return;
    }
    $.post(
      "${ctx}/main/modifyPassword",
    {newPassword:$("#newPassword").val(),userId:$("#userId").val()},
    function (data) {
      if (data.success){
        alert("修改成功");
        location.href ="${contextpath}/main/login";
      }else {
        alert(data.error);
      }
    }
    );
  }
</script>
</html>
