"use strict";
var useModel = ["form", "okUtils", "table", "laytpl", "laydate",
  "element", "jquery", "countUp", "echartsData"];//需要引入的模块
layui.config({
  base: "../js/"
}).use(useModel, function () {
  var $form = layui.form,
    countUp = layui.countUp,
    laydate = layui.laydate,
    element = layui.element,
    table = layui.table,
    okUtils = layui.okUtils,
    $ = layui.jquery,
    laytpl = layui.laytpl;
  /**静态数据**/
  var echartsData = layui.echartsData;
  init();
  
  function init() {
    /**今日访问量**/
    var elem_nums = $(".stat-text");
    elem_nums.each(function (i, j) {
      let ran = parseInt(Math.random() * 99 + 1);
      !new countUp({
        target: j,
        endVal: 20 * ran
      }).start();
    });
    
    /**图表**/
    var mapTree = echarts.init($("#mapOne")[0], "mytheme");
    var mapChina = echarts.init($('#mapChina')[0]);
    okUtils.echartsResize([mapTree, mapChina]);
    
    mapTree.setOption(echartsData.mapTree);//数据图
    
    echartsData.mapChina.series[0].data = echartsData.Address;//地图数据
    
    // visualMap
    mapChina.setOption(echartsData.mapChina);//地图
    
    /**表格**/
    table.render({
      method: "GET",
      url: "../data/user.json",//
      elem: '#userData', //指定原始表格元素选择器（推荐id选择器）
      height: 340, //容器高度
      page: true,
      limit: 7,
      parseData: function (res) {
        res.data.list.forEach(function (i, j) {
          var dateTime = new Date(i.u_endtime);
          i.u_endtime = dateTime.getFullYear() + "-" + dateTime.getMonth() + "-" + dateTime.getDay();
        });
        return {
          "code": res.code,
          "count": res.data.count,
          "data": res.data.list //解析数据列表
        }
      },
      cols: [[
        {field: "id", title: "id", width: 50},
        {field: "u_name", title: "姓名"},
        {field: "u_sex", title: "性别", width: 80},
        {field: "u_email", title: "邮箱"},
        {field: "u_endtime", title: "时间",},//templet: '#titleDate'
        {field: "u_grade", title: "等级"}
      ]], //设置表头
    });
    
    /**日历**/
    laydate.render({
      elem: '#calendar',
      position: 'static',
      show: true,
      btns: ['now'],
      calendar: true,//显示节日
      change: function (value, date) { //监听日期
      
      }
    });
  }
  
});


