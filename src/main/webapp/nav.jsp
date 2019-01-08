<%--
  Created by IntelliJ IDEA.
  User: xue
  Date: 2019/1/2
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css"  media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>总页数低于页码总数</legend>
</fieldset>

<div id="demo0"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>总页数大于页码总数</legend>
</fieldset>

<div id="demo1"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>自定义主题 - 颜色随意定义</legend>
</fieldset>

<div id="demo2"></div>
<div id="demo2-1"></div>
<div id="demo2-2"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>自定义首页、尾页、上一页、下一页文本</legend>
</fieldset>

<div id="demo3"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>不显示首页尾页</legend>
</fieldset>

<div id="demo4"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>开启HASH</legend>
</fieldset>

<div id="demo5"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>只显示上一页、下一页</legend>
</fieldset>

<div id="demo6"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>显示完整功能</legend>
</fieldset>

<div id="demo7"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>自定义排版</legend>
</fieldset>

<div id="demo8"></div>
<div id="demo9"></div>
<div id="demo10"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>自定义每页条数的选择项</legend>
</fieldset>

<div id="demo11"></div>



<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>将一段已知数组分页展示</legend>
</fieldset>

<div id="demo20"></div>
<ul id="biuuu_city_list"></ul>


<script src="${ctx}/static/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;

        //总页数低于页码总数
        laypage.render({
            elem: 'demo0'
            ,count: 50 //数据总数
        });

        //总页数大于页码总数
        laypage.render({
            elem: 'demo1'
            ,count: 70 //数据总数
            ,jump: function(obj){
                console.log(obj)
            }
        });

        //自定义样式
        laypage.render({
            elem: 'demo2'
            ,count: 100
            ,theme: '#1E9FFF'
        });
        laypage.render({
            elem: 'demo2-1'
            ,count: 100
            ,theme: '#FF5722'
        });
        laypage.render({
            elem: 'demo2-2'
            ,count: 100
            ,theme: '#FFB800'
        });

        //自定义首页、尾页、上一页、下一页文本
        laypage.render({
            elem: 'demo3'
            ,count: 100
            ,first: '首页'
            ,last: '尾页'
            ,prev: '<em>←</em>'
            ,next: '<em>→</em>'
        });

        //不显示首页尾页
        laypage.render({
            elem: 'demo4'
            ,count: 100
            ,first: false
            ,last: false
        });

        //开启HASH
        laypage.render({
            elem: 'demo5'
            ,count: 500
            ,curr: location.hash.replace('#!fenye=', '') //获取hash值为fenye的当前页
            ,hash: 'fenye' //自定义hash值
        });

        //只显示上一页、下一页
        laypage.render({
            elem: 'demo6'
            ,count: 50
            ,layout: ['prev', 'next']
            ,jump: function(obj, first){
                if(!first){
                    layer.msg('第 '+ obj.curr +' 页');
                }
            }
        });

        //完整功能
        laypage.render({
            elem: 'demo7'
            ,count: 100
            ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
            ,jump: function(obj){
                console.log(obj)
            }
        });

        //自定义排版
        laypage.render({
            elem: 'demo8'
            ,count: 1000
            ,layout: ['limit', 'prev', 'page', 'next']
        });
        laypage.render({
            elem: 'demo9'
            ,count: 1000
            ,layout: ['prev', 'next', 'page']
        });
        laypage.render({
            elem: 'demo10'
            ,count: 1000
            ,layout: ['page', 'count']
        });

        //自定义每页条数的选择项
        laypage.render({
            elem: 'demo11'
            ,count: 1000
            ,limit: 100
            ,limits: [100, 300, 500]
        });


        //将一段数组分页展示

        //测试数据
        var data = [
            '北京',
            '上海',
            '广州',
            '深圳',
            '杭州',
            '长沙',
            '合肥',
            '宁夏',
            '成都',
            '西安',
            '南昌',
            '上饶',
            '沈阳',
            '济南',
            '厦门',
            '福州',
            '九江',
            '宜春',
            '赣州',
            '宁波',
            '绍兴',
            '无锡',
            '苏州',
            '徐州',
            '东莞',
            '佛山',
            '中山',
            '成都',
            '武汉',
            '青岛',
            '天津',
            '重庆',
            '南京',
            '九江',
            '香港',
            '澳门',
            '台北'
        ];

        //调用分页
        laypage.render({
            elem: 'demo20'
            ,count: data.length
            ,jump: function(obj){
                //模拟渲染
                document.getElementById('biuuu_city_list').innerHTML = function(){
                    var arr = []
                        ,thisData = data.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
                    layui.each(thisData, function(index, item){
                        arr.push('<li>'+ item +'</li>');
                    });
                    return arr.join('');
                }();
            }
        });

    });
</script>

</body>
</html>
