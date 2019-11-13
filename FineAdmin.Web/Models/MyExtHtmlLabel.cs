using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FineAdmin.Model;
using System.Web.Mvc;
using System.Text;

namespace FineAdmin.Web
{
    public static class MyExtHtmlLabel
    {
        /// <summary>
        /// 搜索按钮
        /// </summary>
        public static HtmlString SearchBtnHtml(this HtmlHelper helper, string title = "搜索", string _class = "")
        {
            return new HtmlString(string.Format(@"<button class='layui-btn {1}' lay-submit='' lay-filter='search'>
                                                    <i class='layui-icon'>&#xe615;</i>{0}
                                                </button>", title, _class));
        }
        /// <summary>
        /// 重置按钮
        /// </summary>
        public static HtmlString ResetBtnHtml(this HtmlHelper helper, string title = "重置", string _class = "layui-btn-primary")
        {
            return new HtmlString(string.Format(@"<button type='reset' class='layui-btn {1}'>{0}</button>", title, _class));
        }
        /// <summary>
        /// 表格内按钮组
        /// </summary>]
        public static HtmlString RightToolBarHtml(this HtmlHelper helper, dynamic _list = null)
        {
            StringBuilder sb = new StringBuilder();
            var list = _list as List<ButtonModel>;
            if (list != null && list.Count > 0)
            {
                foreach (var item in list)
                {
                    sb.AppendLine(string.Format(@"<a class='layui-btn layui-btn-xs {0}' href='javascript:;' lay-event='{1}'><i class='ok-icon'>{3}</i>{2}</a>", item.ClassName, item.EnCode, item.FullName, item.Icon));
                }
            }
            return new HtmlString(sb.ToString());
        }
        /// <summary>
        /// 表格外按钮组
        /// </summary>
        public static HtmlString TopToolBarHtml(this HtmlHelper helper, dynamic _list = null)
        {
            StringBuilder sb = new StringBuilder();
            var list = _list as List<ButtonModel>;
            if (list != null && list.Count > 0)
            {
                foreach (var item in list)
                {
                    sb.AppendLine(string.Format(@"<button class='layui-btn layui-btn-sm {0}' lay-event='{1}'><i class='ok-icon'>{3}</i>{2}</button>", item.ClassName, item.EnCode, item.FullName, item.Icon));
                }
            }
            return new HtmlString(sb.ToString());
        }
        /// <summary>
        /// 状态下拉框
        /// </summary>
        public static HtmlString EnabledMarkSelectHtml(this HtmlHelper helper, string defaultTxt = "")
        {
            return new HtmlString(string.Format(@"<div class='layui-input-inline'>
                                                    <select name='EnabledMark'>
                                                        <option value=''>{0}</option>
                                                        <option value='0'>启用</option >
                                                        <option value='1'>禁用</option >
                                                    </select>
                                                </div>", defaultTxt));
        }

    }
}