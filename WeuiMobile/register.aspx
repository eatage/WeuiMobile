<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WeuiMobile.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>注册页</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
    <script src="js/zepto.min.js" type="text/javascript"></script>
    <script src="js/weui.min.js" type="text/javascript"></script>
    <script src="js/mydialogs.js" type="text/javascript"></script>
    <link href="css/weui.css" rel="stylesheet" type="text/css" />
    <link href="css/example.css" rel="stylesheet" type="text/css" />
    <link href="css/navbar.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function fixedWatch(el) {
            if (document.activeElement.nodeName == 'INPUT') {
                el.style.position = "static";
            } else {
                el.style.position = "fixed";
            }
        }
        //监听 防止弹出键盘时position: fixed遮挡页面
        setInterval(function () {
            fixedWatch(document.getElementById("pages"));
        }, 500);
        function checkregister() {
            var name = document.getElementById("txt_name").value;
            var mobile = document.getElementById("txt_mobile").value;
            var comname = document.getElementById("txt_comname").value;
            if (name == "") {
                dialogMsg("请输入名字");
                return false;
            }
            if (mobile == "") {
                dialogMsg("请输入手机号");
                return false;
            }
            if (comname == "") {
                dialogMsg("请输入公司代码");
                return false;
            }
            dialogConfirm("提示", "确定提交吗？");
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="topbar">
        <a class="barback"><img src="icon/Back_24_white.png" /> 返回</a>
        <a class="barclose">关闭</a>
        <a class="barmenu"><img src="icon/barmenu_16_white.png" /></a>
        <span>注册</span>
    </div>
    <div style="height: 35px;">
    </div>
    <div class="page__hd">
        <p class="page__desc">请输入一下信息以注册</p>
    </div>
    <div class="weui-cells__title">蓝色为必填项</div>
    <div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd">
                <label class="weui-label colorblue">姓　名</label></div>
            <div class="weui-cell__bd">
                <asp:TextBox ID="txt_name" runat="server" class="weui-input" placeholder="请输入姓名" maxlength="10" autocomplete="off"></asp:TextBox>
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd">
                <label class="weui-label colorblue">手机号</label></div>
            <div class="weui-cell__bd">
                <asp:TextBox ID="txt_mobile" runat="server" class="weui-input" type="mobile" pattern="[0-9]*" placeholder="请输入手机号" autocomplete="off" maxlength="11"
                onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" 
                onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"></asp:TextBox>
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd">
                <label class="weui-label colorblue">公司代码</label></div>
            <div class="weui-cell__bd">
                <asp:TextBox ID="txt_comname" runat="server" class="weui-input" placeholder="请输入公司代码" maxlength="10" autocomplete="off"></asp:TextBox>
            </div>
        </div>
    </div>
    <br />
    <div class="weui-btn-area">
        <asp:Button ID="btn_submit" runat="server" Text="确定" OnClientClick="return checkregister()" class="weui-btn weui-btn_primary"/>
    </div>
    <div id="pages" class="weui-footer weui-footer_fixed-bottom">
        <p class=" weui-footer__text">必须注册才能使用 ver:2016-12-22</p>
        <p class="weui-footer__text">Copyright © 2008-2016</p>
    </div>
    </form>
    <div id="dialogs">
        <!--BEGIN dialog1-->
        <div class="js_dialog" id="iosDialog1" style="display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__hd"><strong class="weui-dialog__title"><span id="js_dialog_1_title"></span></strong></div>
                <div class="weui-dialog__bd"><span id="js_dialog_1_msg"></span></div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default"><span id="js_dialog_1_cancel">取消</span></a>
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary"><span id="js_dialog_1_submit">确定</span></a>
                </div>
            </div>
        </div>
        <!--END dialog1-->
        <!--BEGIN dialog2-->
        <div class="js_dialog" id="iosDialog2" style="display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd"><span id="js_dialog_2_msg"></span></div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary"><span id="js_dialog_2_submit">知道了</span></a>
                </div>
            </div>
        </div>
        <!--END dialog2-->
    </div>
</body>
</html>
