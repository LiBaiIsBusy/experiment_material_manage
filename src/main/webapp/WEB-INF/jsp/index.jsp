<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>主界面</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: darkcyan;
        }

        .main {
            width: 420px;
            height: 280px;
            margin: 180px auto;
            background-color: darkgray;
            text-align: center;
            padding: 5px;
        }

        input {
            margin-right: 45px;
        }
    </style>
</head>
<body>
<div class="main">
    <h2>主界面（实验室耗材管理系统）</h2>

    <form action="#">
        <fieldset>
            <legend>出入库管理</legend>
            <a href="${ctx}/stock/toStockManage"><input type="button" value="库存管理"/></a>
            <a href="${ctx}/record/toAddRecord?type=RK"><input type="button" value="耗材入库"/></a>
            <a href="${ctx}/record/toAddRecord?type=CK"><input type="button" value="耗材出库"/></a>
        </fieldset>
        <fieldset>
            <legend>查询</legend>
            <a href="耗材信息.html"><input type="button" value="耗材信息"/></a>
            <a href="入库信息.html"><input type="button" value="入库信息"/></a>
            <a href="出库信息.html"><input type="button" value="出库信息"/></a>
        </fieldset>
        <fieldset>
            <legend>辅助功能</legend>
            <a href="库存预警.html"><input type="button" value="库存预警"/></a>
            <a href="${ctx}/main/toModifyPassword"><input type="button" value="修改密码"/></a>
            <a href="${ctx}/main/toLogin"><input type="button" value="退出"/></a>
        </fieldset>
    </form>
</div>
</body>
</html>
