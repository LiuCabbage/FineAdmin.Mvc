using FineAdmin.IRepository;
using FineAdmin.IService;
using FineAdmin.Model;

namespace FineAdmin.Service
{
    public abstract class BaseService<T> where T : class, new()
    {
        public IBaseRepository<T> BaseRepository { get; set; }
        #region CRUD
        /// <summary>
        /// 根据主键返回实体
        /// </summary>
        public T GetById(int Id)
        {
            return BaseRepository.GetById(Id);
        }
        /// <summary>
        /// 新增
        /// </summary>
        public bool Insert(T model)
        {
            return BaseRepository.Insert(model) > 0 ? true : false;
        }
        /// <summary>
        /// 根据主键修改数据
        /// </summary>
        public bool UpdateById(T model)
        {
            return BaseRepository.UpdateById(model) > 0 ? true : false;
        }
        /// <summary>
        /// 根据主键删除数据
        /// </summary>
        public bool DeleteById(int Id)
        {
            return BaseRepository.DeleteById(Id) > 0 ? true : false;
        }
        /// <summary>
        /// 根据主键批量删除数据
        /// </summary>
        public bool DeleteByIds(string Ids)
        {
            return BaseRepository.DeleteByIds(Ids) > 0 ? true : false;
        }
        /// <summary>
        /// 根据条件删除
        /// </summary>
        public bool DeleteByWhere(string where)
        {
            return BaseRepository.DeleteByWhere(where) > 0 ? true : false;
        }
        #endregion

        public dynamic GetListByFilter(T filter, PageInfo pageInfo, string where = null)
        {
            string _orderBy = string.Empty;
            if (!string.IsNullOrEmpty(pageInfo.field))
            {
                _orderBy = string.Format(" ORDER BY {0} {1}", pageInfo.field, pageInfo.order);
            }
            else
            {
                _orderBy = " ORDER BY CreateTime desc";
            }
            long total = 0;
            var list = BaseRepository.GetByPage(new SearchFilter { pageIndex = pageInfo.page, pageSize = pageInfo.limit, returnFields = pageInfo.returnFields, param = filter, where = where, orderBy = _orderBy }, out total);
            return Pager.Paging(list, total);
        }
    }
}
