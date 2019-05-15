using System;
using System.Collections.Generic;
using System.Linq;
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
using WPF中的数据模板DataTemplate;

namespace WPF中的数据模板_DataTemplate_
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        List<People> demoList;
        public MainWindow()
        {
            InitializeComponent();
            demoList = new List<People>()
            {
                new People("A",@"C:\Users\JasonFinTGroup\Documents\Visual Studio 2015\Projects\WPF控件\WPF中的数据模板(DataTemplate)\Photos\A.jpg") { } ,
                 new People("B",@"C:\Users\JasonFinTGroup\Documents\Visual Studio 2015\Projects\WPF控件\WPF中的数据模板(DataTemplate)\Photos\B.jpg") { } ,
                  new People("C",@"C:\Users\JasonFinTGroup\Documents\Visual Studio 2015\Projects\WPF控件\WPF中的数据模板(DataTemplate)\Photos\C.jpg") { } ,
                     new People("D",@"C:\Users\JasonFinTGroup\Documents\Visual Studio 2015\Projects\WPF控件\WPF中的数据模板(DataTemplate)\Photos\D.jpg") { } ,
            };
            ListBox_PeopleList.ItemsSource = demoList;
        }
    }
}
