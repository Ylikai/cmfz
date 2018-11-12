<%@page contentType="text/html;UTF-8" pageEncoding="utf-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/easyui/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/easyui/form.validator.rules.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/easyui/easyui-lang-zh_CN.js"></script>
    <title>Document</title>
    <script>
        $(function(){
            $("#tb").dialog({
                buttons:[{
                    text:'登陆',
                    width:70,
                    handler:function(){
                        $("#loginForm").form('submit',{
                            url:"${pageContext.request.contextPath}/admin/login",
                           success:function(data){
                               if(data=='true'){
                                   window.location='${pageContext.request.contextPath}/index.jsp';
                                }else{
                                   window.location='${pageContext.request.contextPath}/admin/login.jsp';
                                }
                            }
                        })
                    }
                },{
                    text:'取消',
                    width:70,
                    handler:function(){
                        $("#loginForm").form("clear");
                    }
                }],
                closable:false,
            })

        })
    </script>
</head>
<body>
    <div id="tb" class="easyui-dialog" data-options="width:300,height:300,title:'管理员登录',iconCls:'icon-man'">
        <div style="text-align: center;">
            <form class="easyui-form" id="loginForm">
                <div style="margin-top: 80px;">
                    用户名：<input type="text" name="username" class="easyui-textbox" data-options="required:true,"><br>
                </div>
                <div style="margin-top: 40px;">
                    密&nbsp;&nbsp;&nbsp;码：<input type="text" name="password" class="easyui-textbox" data-options="required:true,"><br>
                </div>
            </form>
        </div>
    </div>
</body>
</html>