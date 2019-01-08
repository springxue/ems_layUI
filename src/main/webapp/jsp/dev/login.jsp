<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>开发者登录</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
    <script src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<form action="${ctx}/dev/login"  class="layui-form" method="post" style="width: 300px;margin: 0 auto;margin-top: 20px">
    <h2 style="margin-bottom: 10px;">开发者登录</h2>
    <div class="layui-form-item">
        <div class="layui-input-inline">
            <input type="text" name="devName" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-inline">
            <input type="password" name="devPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-inline">
            <button class="layui-btn" lay-submit lay-filter="formDemo">确认</button>
            <button type="reset" class="layui-btn layui-btn-primary">清空</button>
        </div>
    </div>
</form>
</body>
</html>
