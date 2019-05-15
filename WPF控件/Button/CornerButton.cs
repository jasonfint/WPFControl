using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls.Primitives;

namespace Button
{
  public  class CornerButton:ButtonBase
    {
        public string Info
        {
            get { return (string)GetValue(InfoProperty); }
            set { SetValue(InfoProperty, value); }
        }

        public static readonly DependencyProperty InfoProperty = 
            DependencyProperty.Register("Info", typeof(string), typeof(CornerButton), new PropertyMetadata(""));
    }
}
