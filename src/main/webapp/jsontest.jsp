<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
    <%--<base href="/myweb/">--%>
    <title>登录页面</title>
        <script src="/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">

          function  check(){
                var username=document.getElementById("username").value;
                $.ajax({
                    url : "/tet",
                    type : "POST",
                    data :{"username":username},
                    success : function(data) {
                        alert("成功");
                        console.log(data);
                    },
                    error:function (data) {
                        alert("失败");
                        console.log(data);
                    }

                })

        }




    </script>
</head>

<body>
<div id="login_frame">



    <form  >

        <p><label class="label_input">用户名</label><input type="text" id="username" name="username" class="text_field" onblur="check();"/>
            <span id="myFont" style="color: red;">*</span>
            <br>
        </p>


        <p><label class="label_input">密码</label><input type="password" name="password" class="text_field"/></p>

        <div id="login_control">
            <input type="button" id="btn_login" value="注册" onclick="aaa()"/>

            <a id="forget_pwd" href="forget_pwd.html">忘记密码？</a>
        </div>
        <input type="submit" value="提交">
    </form>

</div>
</body>
</html>
