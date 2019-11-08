using System;

namespace FineAdmin.IRepository
{
    public interface IBaseRepository<T> where T : class, new()
    {
        #region CRUD
        /// <summary>
        /// 根据主键返回实体
        /// </summary>
        T GetById(int Id);
        /// <summary>
        /// 新增
        /// </summary>
        int Insert(T model);
        /// <summary>
        /// 根据主键修改数据
        /// </summary>
        int UpdateById(T model);
        /// <summary>
        /// 根据主键删除数据
        /// </summary>
        int DeleteById(int Id);
        /// <summary>
        /// 根据主键批量删除数据
        /// </summary>
        int DeleteByIds(String Ids);
        /// <summary>
        /// 根据条件删除
        /// </summary>
        int DeleteByWhere(string where);
        #endregion


    }
}
