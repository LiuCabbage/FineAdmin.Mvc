using DapperExtensions.MySQLExt;
using FineAdmin.IRepository;
using FineAdmin.Model;
using System;
using System.Collections.Generic;

namespace FineAdmin.Repository
{
    public class BaseRepository<T> : IBaseRepository<T> where T : class, new()
    {
        #region CRUD
        /// <summary>
        /// 根据主键返回实体
        /// </summary>
        public T GetById(int Id)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                return conn.GetById<T>(Id);
            }
        }
        /// <summary>
        /// 新增
        /// </summary>
        public int Insert(T model)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                return conn.Insert<T>(model);
            }
        }
        /// <summary>
        /// 根据主键修改数据
        /// </summary>
        public int UpdateById(T model)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                return conn.UpdateById<T>(model);
            }
        }
        /// <summary>
        /// 根据主键删除数据
        /// </summary>
        public int DeleteById(int Id)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                return conn.DeleteById<T>(Id);
            }
        }
        /// <summary>
        /// 根据主键批量删除数据
        /// </summary>
        public int DeleteByIds(object Ids)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                return conn.DeleteByIds<T>(Ids);
            }
        }
        /// <summary>
        /// 根据条件删除
        /// </summary>
        public int DeleteByWhere(string where)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                return conn.DeleteByWhere<T>(where);
            }
        }
        #endregion

        public IEnumerable<T> GetByPage(SearchFilter filter, out long total)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                return conn.GetByPage<T>(filter.pageIndex, filter.pageSize, out total, filter.returnFields, filter.where, filter.param, filter.orderBy, filter.transaction, filter.commandTimeout);
            }
        }

    }
}
