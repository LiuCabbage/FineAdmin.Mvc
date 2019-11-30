using Dapper;
using FineAdmin.IRepository;
using FineAdmin.Model;
using System.Collections.Generic;

namespace FineAdmin.Repository
{
    public class DonationRepository : BaseRepository<DonationModel>, IDonationRepository
    {
        /// <summary>
        /// 获得捐赠排行榜
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public IEnumerable<DonationModel> GetSumPriceTop(int num)
        {
            using (var conn = MySqlHelper.GetConnection())
            {
                string sql = @"SELECT any_value(Id) Id,`Name`,any_value(SUM(Price)) Price FROM donation
                            GROUP BY `Name`
                            ORDER BY Price desc
                            LIMIT 0,@num";
                return conn.Query<DonationModel>(sql, new { num = num });
            }
        }
    }
}
