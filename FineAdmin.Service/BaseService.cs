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
        public int Insert(T model)
        {
            return BaseRepository.Insert(model);
        }
        /// <summary>
        /// 根据主键修改数据
        /// </summary>
        public int UpdateById(T model)
        {
            return BaseRepository.UpdateById(model);
        }
        /// <summary>
        /// 根据主键删除数据
        /// </summary>
        public int DeleteById(int Id)
        {
            return BaseRepository.DeleteById(Id);
        }
        /// <summary>
        /// 根据主键批量删除数据
        /// </summary>
        public int DeleteByIds(string Ids)
        {
            return BaseRepository.DeleteByIds(Ids);
        }
        /// <summary>
        /// 根据条件删除
        /// </summary>
        public int DeleteByWhere(string where)
        {
            return BaseRepository.DeleteByWhere(where);
        }
        #endregion


    }
}
