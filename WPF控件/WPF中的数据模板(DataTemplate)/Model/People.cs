using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPF中的数据模板DataTemplate
{
    public class People
    {
        private string name;

        private string photo;

        public People(string name, string photo)
        {
            this.name = name;
            this.photo = photo;
        }

        public string Name
        {
            get
            {
                return this.name;
            }
            set
            {
                this.name = value;
            }
        }

        public string Photo
        {
            get
            {
                return this.photo;
            }
            set
            {
                this.photo = value;
            }
        }
    }
}
