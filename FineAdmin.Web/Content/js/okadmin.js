var objOkTab = "";
layui.use(["element", "layer", "okUtils", "okTab", "okLayer"], function () {
    var okUtils = layui.okUtils;
    var $ = layui.jquery;
    var layer = layui.layer;
    var okLayer = layui.okLayer;

    var okTab = layui.okTab({
        url: "/Permissions/Module/GetModuleList",
        openTabNum: 30, // 允许同时选项卡的个数
        parseData: function (data) { // 如果返回的结果和navs.json中的数据结构一致可省略这个方法
            return data;
        }
    });
    objOkTab = okTab;

    /**
     * 左侧导航渲染完成之后的操作
     */
    okTab.render(function () {
    });

    /**
     * 添加新窗口
     */
    $("body").on("click", "#navBar .layui-nav-item a,#userInfo a", function () {
        // 如果不存在子级
        if ($(this).siblings().length == 0) {
            okTab.tabAdd($(this));
        }
        // 关闭其他展开的二级标签
        $(this).parent("li").siblings().removeClass("layui-nav-itemed");
        if (!$(this).attr('lay-id')) {
            var topLevelEle = $(this).parents("li.layui-nav-item");
            var childs = $("#navBar > li > dl.layui-nav-child").not(topLevelEle.children("dl.layui-nav-child"));
            childs.removeAttr('style');
        }
    });

    /**
     * 左侧菜单展开动画
     */
    $("#navBar").on('click', '.layui-nav-item a', function () {
        if (!$(this).attr('lay-id')) {
            var superEle = $(this).parent();
            var ele = $(this).next('.layui-nav-child');
            var height = ele.height();
            ele.css({'display': 'block'});

            if (superEle.is('.layui-nav-itemed')) {//是否是展开状态
                ele.height(0);
                ele.animate({
                    height: height + 'px'
                }, function () {
                    ele.css({
                        height: "auto"
                    });
                    //ele.removeAttr('style');
                });
            } else {
                ele.animate({
                    height: 0
                }, function () {
                    ele.removeAttr('style');
                });
            }
        }
    });

    /**
     * 左边菜单显隐功能
     */
    $(".ok-menu").click(function () {
        $(".layui-layout-admin").toggleClass("ok-left-hide");
        $(this).find('i').toggleClass("ok-menu-hide");
        localStorage.setItem("isResize", false);
        setTimeout(function () {
            localStorage.setItem("isResize", true);
        }, 1200);
    });

    /**
     * 移动端的处理事件
     */
    $("body").on("click", ".layui-layout-admin .ok-left a[data-url],.ok-make", function () {
        if ($(".layui-layout-admin").hasClass("ok-left-hide")) {
            $(".layui-layout-admin").removeClass("ok-left-hide");
            $(".ok-menu").find('i').removeClass("ok-menu-hide");
        }
    });

    /**
     * tab左右移动
     */
    $("body").on("click", ".okNavMove", function () {
        var moveId = $(this).attr("data-id");
        var that = this;
        okTab.navMove(moveId, that);
    });

    /**
     * 刷新当前tab页
     */
    $("body").on("click", ".ok-refresh", function () {
        okTab.refresh(this);
    });

    /**
     * 关闭tab页
     */
    $("body").on("click", "#tabAction a", function () {
        var num = $(this).attr('data-num');
        okTab.tabClose(num);
    });

    /**
     * 全屏/退出全屏
     */
    $("body").on("keydown", function (event) {
        event = event || window.event || arguments.callee.caller.arguments[0];
        // 按 Esc
        if (event && event.keyCode == 27) {
            console.log("Esc");
            $("#fullScreen").children("i").eq(0).removeClass("okicon-screen-restore");
        }
        // 按 F11
        if (event && event.keyCode == 122) {
            $("#fullScreen").children("i").eq(0).addClass("okicon-screen-restore");
        }
    });

    $("body").on("click", "#fullScreen", function () {
        if ($(this).children("i").hasClass("okicon-screen-restore")) {
            screenFun(2).then(function () {
                $(this).children("i").eq(0).removeClass("okicon-screen-restore");
            });
        } else {
            screenFun(1).then(function () {
                $(this).children("i").eq(0).addClass("okicon-screen-restore");
            });
        }
    });

    /**
     * 全屏和退出全屏的方法
     * @param num 1代表全屏 2代表退出全屏
     * @returns {Promise}
     */
    function screenFun(num) {
        num = num || 1;
        num = num * 1;
        var docElm = document.documentElement;

        switch (num) {
            case 1:
                if (docElm.requestFullscreen) {
                    docElm.requestFullscreen();
                } else if (docElm.mozRequestFullScreen) {
                    docElm.mozRequestFullScreen();
                } else if (docElm.webkitRequestFullScreen) {
                    docElm.webkitRequestFullScreen();
                } else if (docElm.msRequestFullscreen) {
                    docElm.msRequestFullscreen();
                }
                break;
            case 2:
                if (document.exitFullscreen) {
                    document.exitFullscreen();
                } else if (document.mozCancelFullScreen) {
                    document.mozCancelFullScreen();
                } else if (document.webkitCancelFullScreen) {
                    document.webkitCancelFullScreen();
                } else if (document.msExitFullscreen) {
                    document.msExitFullscreen();
                }
                break;
        }

        return new Promise(function (res, rej) {
            res("返回值");
        });
    }

    /**
     * 系统公告
     */
    $(document).on("click", "#notice", noticeFun);

    function noticeFun() {
        var srcWidth = okUtils.getBodyWidth();
        layer.open({
            type: 0, title: "系统公告", btn: "我知道啦", btnAlign: 'c', content: getContent(),
        });
    }
    
    function getContent() {
        let content = "";
        content = "版权声明：<br/>" +
            "ok-admin 和 FineAdmin.Mvc都使用GPL-3.0开源协议，个人<span style='color:#5cb85c'>免费使用</span>，商用请联系作者<span style='color:#ff5722'>获取授权</span><br/>" +
            "ok-admin开源地址：<a style='color:#ff5722;' target='_blank' href='https://gitee.com/bobi1234/ok-admin'><span>ok-admin</span></a><br/>" +
            "FineAdmin.Mvc开源地址：<a style='color:#ff5722;' target='_blank' href='https://gitee.com/Liu_Cabbage/FineAdmin.Mvc'><span>FineAdmin.Mvc</span></a>";
        return content;
    }

    /**
     * 捐赠作者
     */
    $(".layui-footer button.donate").click(function () {
        layer.tab({
            area: ["330px", "350px"],
            tab: [{
                title: "支付宝",
                content: "<img src='/Content/images/zfb.png' width='200' height='300' style='margin-left: 60px'>"
            }, {
                title: "微信",
                content: "<img src='/Content/images/wx.png' width='200' height='300' style='margin-left: 60px'>"
            }]
        });
    });

    /**
     * QQ群交流
     */
    $("body").on("click", ".layui-footer button.communication,#noticeQQ", function () {
        layer.tab({
            area: ["330px", "350px"],
            tab: [{
                title: "QQ",
                content: "<img src='/Content/images/qq.jpg' width='200' height='300' style='margin-left: 60px'>"
            }]
        });
    });
    console.log("        __                         .___      .__        \n" +
        "  ____ |  | __         _____     __| _/_____ |__| ____  \n" +
        " /  _ \\|  |/ /  ______ \\__  \\   / __ |/     \\|  |/    \\ \n" +
        "(  <_> )    <  /_____/  / __ \\_/ /_/ |  Y Y  \\  |   |  \\\n" +
        " \\____/|__|_ \\         (____  /\\____ |__|_|  /__|___|  /\n" +
        "            \\/              \\/      \\/     \\/        \\/\n" +
        "" +
        "版本：v2.0\n" +
        "作者：bobi\n" +
        "邮箱：bobi1234@foxmail.com\n" +
        "企鹅：833539807\n" +
        "描述：一个很赞的，扁平化风格的，响应式布局的后台管理模版，旨为后端程序员减压！\n" +
        "版权说明：项目使用GPL-3.0开源协议，个人免费使用，商用请获取授权\n" +
        "码云：https://gitee.com/bobi1234/ok-admin");
    console.log(" _____ _               _       _           _       \n" +
        "|  ___(_)_ __   ___   / \\   __| |_ __ ___ (_)_ __  \n" +
        "| |_  | | '_ \\ / _ \\ / _ \\ / _` | '_ ` _ \\| | '_ \\ \n" +
        "|  _| | | | | |  __// ___ \\ (_| | | | | | | | | | |\n" +
        "|_|   |_|_| |_|\\___/_/   \\_\\__,_|_| |_| |_|_|_| |_|\n" +
        "作者：Liu_Cabbage\n" +
        "邮箱：178899573@qq.com\n" +
        "企鹅：178899573\n" +
        "描述：使用okadmin+ASP.NET MVC搭建的通用权限后台管理系统。\n" +
        "版权说明：项目使用GPL-3.0开源协议，个人免费使用，商用请获取授权\n" +
        "码云：https://gitee.com/Liu_Cabbage/FineAdmin.Mvc");
});
