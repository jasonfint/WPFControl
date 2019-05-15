using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WPF_2个datagrid之间同步进度条
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        List<string> testList;
        public MainWindow()
        {
            InitializeComponent();
            testList = new List<string>()
            {
                "bb",
                "aa",
                 "cc",
                "dd",
                 "ee",
                "ff",
                 "hh",
                "jj",
                 "bb",
                "aa",
                 "cc",
                "dd",
                 "ee",
                "ff",
                 "hh",
                "jj",
                "bb",
                "aa",
                 "cc",
                "dd",
                 "ee",
                "ff",
                 "hh",
                "jj",
                 "bb",
                "aa",
                 "cc",
                "dd",
                 "ee",
                "ff",
                 "hh",
                "jj"
            };
            dgSource.ItemsSource = testList;
            dgTo.ItemsSource = testList;

        }

        private void DgTo_ScrollChanged(object sender, ScrollChangedEventArgs e)
        {
            ScrollChanged(dgTo, dgSource, e);
        }

        void ScrollChanged(DataGrid dg1, DataGrid dg2, ScrollChangedEventArgs e)
        {
            if (e.HorizontalChange != 0.0f)
            {
                ScrollViewer sv = null;
                Type t = dg1.GetType();
                try
                {
                    sv = t.InvokeMember("InternalScrollHost", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.GetProperty, null, dg2, null) as ScrollViewer;
                    sv.ScrollToHorizontalOffset(e.HorizontalOffset);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            if (e.VerticalChange != 0.0f)
            {
                ScrollViewer sv = null;
                Type t = dg1.GetType();
                try
                {
                    sv = t.InvokeMember("InternalScrollHost", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.GetProperty, null, dg2, null) as ScrollViewer;
                    sv.ScrollToVerticalOffset(e.VerticalOffset);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }

        }

        private void DgSource_ScrollChanged(object sender, ScrollChangedEventArgs e)
        {
            ScrollChanged(dgSource, dgTo, e);
        }
    }
}
