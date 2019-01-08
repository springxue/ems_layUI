<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->

</head>
<body>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <%--------顶栏----------%>
<jsp:include page="${ctx}/jsp/common/header.jsp"></jsp:include>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">APP账户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="javascript:;">列表三</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">APP应用管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/app/index/${currentUser.id}">APP维护</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>

            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <table class="layui-table">
                <thead>
                    <th>软件名称</th>
                    <th>APK名称</th>
                    <th>软件大小（单位M）</th>
                    <th>所属平台</th>
                    <th>所属分类（一级分类、二级分类、三级分类）</th>
                    <th>状态</th>
                    <th>下载次数</th>
                    <th>最新版本号</th>
                    <th>操作</th>
                </thead>
                <tbody>
                    <c:forEach items="${page.list}" var="appInfo">
                        <tr>
                            <td>${appInfo.softwareName}</td>
                            <td>${appInfo.APKName}</td>
                            <td>${appInfo.softwareSize}</td>
                            <td>
                                <c:if test="${appInfo.flatformId eq 1}">
                                    手机
                                </c:if>
                                <c:if test="${appInfo.flatformId eq 2}">
                                    平板
                                </c:if>
                                <c:if test="${appInfo.flatformId eq 3}">
                                    通用
                                </c:if>
                            </td>
                            <td>${appInfo.categoryLevel1.categoryName}->${appInfo.categoryLevel2.categoryName}->${appInfo.categoryLevel3.categoryName}</td>
                            <td>${appInfo.status}</td>
                            <td>${appInfo.downloads}</td>
                            <td>${appInfo.newAppVersion.versionNo}</td>
                            <td><button>操作</button></td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
            <div id="demo3"></div>

        </div>
    </div>

    <jsp:include page="../common/footer.jsp"></jsp:include>
</div>
<script src="${ctx}/static/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });

</script>
<script>
    layui.use(['laypage', 'layer'], function() {
        var laypage = layui.laypage
            , layer = layui.layer;
        //自定义首页、尾页、上一页、下一页文本
        laypage.render({
            elem: 'demo3'
            , count: 100
            , first: '首页'
            , last: '尾页'
            , prev: '<em>←</em>'
            , next: '<em>→</em>'
        });
    })


</script>
</body>
</body>
</html>