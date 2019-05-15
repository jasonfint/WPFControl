using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEVGridControl
{
    public class ViewModel
    {
        public ObservableCollection<SimpleData> Collection { get; set; }
        public ViewModel()
        {
        }
    }
}
