using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IRepository;
using FineAdmin.IService;
using FineAdmin.Model;

namespace FineAdmin.Service
{
    public class DonationService : BaseService<DonationModel>, IDonationService
    {
        public IDonationRepository DonationRepository { get; set; }

        public dynamic GetListByFilter(DonationModel filter, PageInfo pageInfo)
        {
            string _where = " where 1=1";
            if (!string.IsNullOrEmpty(filter.Name))
            {
                _where += " and Name=@Name";
            }
            return GetListByFilter(filter, pageInfo, _where);
        }

        public IEnumerable<DonationModel> GetSumPriceTop(int num)
        {
            return DonationRepository.GetSumPriceTop(num);
        }

        public DonationModel GetConsoleNumShow()
        {
            return DonationRepository.GetConsoleNumShow();
        }
    }
}
