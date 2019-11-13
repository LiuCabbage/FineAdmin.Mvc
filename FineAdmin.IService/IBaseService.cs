using FineAdmin.Model;
using System;

namespace FineAdmin.IService
{
    public interface IBaseService<T> where T : class, new()
    {
        #region CRUD
        /// <summary>
        /// 根据主键返回实体
        /// </summary>
        T GetById(int Id);
        /// <summary>
        /// 新增
        /// </summary>
        bool Insert(T model);
        /// <summary>
        /// 根据主键修改数据
        /// </summary>
        bool UpdateById(T model);
        /// <summary>
        /// 根据主键删除数据
        /// </summary>
        bool DeleteById(int Id);
        /// <summary>
        /// 根据主键批量删除数据
        /// </summary>
        bool DeleteByIds(object Ids);
        /// <summary>
        /// 根据条件删除
        /// </summary>
        bool DeleteByWhere(string where);
        #endregion

        dynamic GetListByFilter(T filter, PageInfo pageInfo);
    }
}
