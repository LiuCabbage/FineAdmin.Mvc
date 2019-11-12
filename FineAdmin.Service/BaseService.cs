using FineAdmin.IRepository;
using FineAdmin.IService;

namespace FineAdmin.Service
{
    public class BaseService<T> : IBaseService<T> where T : class, new()
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


    }
}
