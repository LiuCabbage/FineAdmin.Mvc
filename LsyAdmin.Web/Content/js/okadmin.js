/^http(s*):\/\//.test(location.href) || alert('请先部署到 localhost 下再访问');

var objOkTab = "";
layui.use(["element", "layer", "okUtils", "okTab", "okLayer"], function () {
    var okUtils = layui.okUtils;
    var $ = layui.jquery;
    var layer = layui.layer;
    var okLayer = layui.okLayer;
    var okTab = layui.okTab({
        url: "data/navs.json",
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
        // 关闭其他的二级标签
        $(this).parent("li").siblings().removeClass("layui-nav-itemed")

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
     * 左侧菜单展开动画
     */
    $("#navBar").on('click', '.layui-nav-item a', function () {
        if (!$(this).attr('lay-id')) {
            var superEle = $(this).parent();
            var ele = $(this).next('.layui-nav-child');
            var height = ele.height();
            if (superEle.is('.layui-nav-itemed')) {
                ele.height(0);
                ele.animate({
                    height: height + 'px'
                }, function () {
                    ele.removeAttr('style');
                });
            } else {
                ele.css({'display': 'block'});
                ele.animate({
                    height: 0
                }, function () {
                    ele.removeAttr('style');
                });
            }
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
            type: 0,
            title: "系统公告",
            btn: "我知道啦",
            btnAlign: 'c',
            content: "ok-admin v2.0上线啦(^し^)<br />" +
                "在此郑重承诺该模板<span style='color:#5cb85c'>永久免费</span>为大家提供" +
                "<br />若有更好的建议欢迎<span id='noticeQQ'>加入QQ群</span>一起聊",
            yes: function (index) {
                if (srcWidth > 800) {
                    layer.tips('公告跑到这里去啦', '#notice', {
                        tips: [1, '#000'],
                        time: 2000
                    });
                }
                sessionStorage.setItem("notice", "true");
                layer.close(index);
            },
            cancel: function (index) {
                if (srcWidth > 800) {
                    layer.tips('公告跑到这里去啦', '#notice', {
                        tips: [1, '#000'],
                        time: 2000
                    });
                }
            }
        });
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

    console.log(" _                  _       _           _             __  __           \n" +
                "| |    ___ _   _   / \\   __| |_ __ ___ (_)_ __       |  \\/  |_   _____ \n" +
                "| |   / __| | | | / _ \\ / _` | '_ ` _ \\| | '_ \\ _____| |\\/| \\ \\ / / __|\n" +
                "| |___\\__ \\ |_| |/ ___ \\ (_| | | | | | | | | | |_____| |  | |\\ V / (__ \n" +
                "|_____|___/\\__, /_/   \\_\\__,_|_| |_| |_|_|_| |_|     |_|  |_| \\_/ \\___|\n" +
                "           |___/                                                       \n" +
        "版本：v1.0\n" +
        "作者：Liu_Cabbage\n" +
        "邮箱：178899573@qq.com\n" +
        "企鹅：178899573\n" +
        "描述：使用ASP.NET MVC搭建的通用权限后台管理系统。\n" +
        "模板：https://gitee.com/bobi1234/ok-admin\n" +
        "码云：https://gitee.com/Liu_Cabbage/LsyAdmin-Mvc");
});
