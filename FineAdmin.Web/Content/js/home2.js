"use strict";
var useModel = ["form", "okUtils", "table", "laytpl", "laydate",
   "element", "jquery", "countUp", "home2Data"];//需要引入的模块
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
   var echartsData = layui.home2Data;
   init();
   
   function init() {
      /**今日访问量**/
      var elem_nums = $(".media-cont .num");
      elem_nums.each(function (i, j) {
         let ran = parseInt(Math.random() * 1900 + 100); //[100,2000)包括100不包括2000
         !new countUp({
            target: j,
            endVal: ran
         }).start();
      });
      
      /**4个图表**/
      var echIncome = echarts.init($("#echIncome")[0]);
      var echGoods = echarts.init($('#echGoods')[0]);
      var echBlogs = echarts.init($("#echBlogs")[0]);
      var echUser = echarts.init($('#echUser')[0]);
      okUtils.echartsResize([echIncome, echGoods, echBlogs, echUser]);
      
      echIncome.setOption(echartsData.income);//数据图
      echGoods.setOption(echartsData.goods);//数据图
      echBlogs.setOption(echartsData.blogs);//数据图
      echUser.setOption(echartsData.user);//数据图
      
      //用户活跃量,用户访问来源
      var echOne = echarts.init($("#echOne")[0], "themez");
      var echTwo = echarts.init($("#echTwo")[0], "themez");
      var mapThree = echarts.init($("#mapThree")[0], "themez");
      okUtils.echartsResize([echOne, echTwo, mapThree]);
      
      echOne.setOption(echartsData.echOne);//数据图
      echTwo.setOption(echartsData.echTwo);//数据图
      mapThree.setOption(echartsData.mapThree);//数据图
      
      
   }
   
});


