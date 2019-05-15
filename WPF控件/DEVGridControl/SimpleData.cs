using DevExpress.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEVGridControl
{
    public class SimpleData : BindableBase
    {
        public string City { get; set; }
        public double Discount { get; set; }
        public double Freight { get; set; }
        public double Quantity { get; set; }
        public double UnitPrice { get; set; }
    }
}
