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

namespace 在WPF中蒙版背景实现
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            SystemParameters.StaticPropertyChanged -= SystemParameters_StaticPropertyChanged;
            SystemParameters.StaticPropertyChanged += SystemParameters_StaticPropertyChanged;
        }
        protected override void OnStateChanged(EventArgs e)
        {
            base.OnStateChanged(e);
            System.Windows.Window win = System.Windows.Window.GetWindow(this);
           
                //if (win.WindowState == WindowState.Maximized)
                //{
                //    double top = SystemParameters.WorkArea.Top;
                //    double left = SystemParameters.WorkArea.Left;
                //    double right = SystemParameters.PrimaryScreenWidth - SystemParameters.WorkArea.Right;
                //    double bottom = SystemParameters.PrimaryScreenHeight - SystemParameters.WorkArea.Bottom;
                //    win.Margin = new Thickness(left, top, right, bottom);
                //}

            double top = SystemParameters.WorkArea.Top;
            double left = SystemParameters.WorkArea.Left;
            double right = SystemParameters.PrimaryScreenWidth - SystemParameters.WorkArea.Right;
            double bottom = SystemParameters.PrimaryScreenHeight - SystemParameters.WorkArea.Bottom;
            win.Margin = new Thickness(left, top, right, bottom);

        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            // 设置全屏
         
            this.WindowStyle = System.Windows.WindowStyle.None;//无边框
            this.ResizeMode = System.Windows.ResizeMode.NoResize;//禁止大小调整
                                                                 ////this.Topmost = true;//设置窗口置于最顶层,不建议设置为置顶，切换挡住其他窗口
            this.ShowInTaskbar = false;//是否显示在任务栏中
                                       //WindowStartupLocation = System.Windows.WindowStartupLocation.CenterScreen;//居中显示

            //窗口全屏大小设置，通过传入参数获得主界面窗口大小，进行软件界面大小蒙版，不是全屏覆盖
            double top = SystemParameters.WorkArea.Top;
            double left = SystemParameters.WorkArea.Left;
            double right = SystemParameters.PrimaryScreenWidth - SystemParameters.WorkArea.Right;
            double bottom = SystemParameters.PrimaryScreenHeight - SystemParameters.WorkArea.Bottom;
           
            this.Margin = new Thickness(left, top, right, bottom);
            this.WindowState = System.Windows.WindowState.Maximized;//不显示边框，只显示工作区
            //this.WindowState = System.Windows.WindowState.Minimized;//不显示边框，只显示工作区
            //this.WindowState = System.Windows.WindowState.Maximized;//不显示边框，只显示工作区
        }
        private void SystemParameters_StaticPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            System.Windows.Window win = System.Windows.Window.GetWindow(this);
            if (e.PropertyName == "WorkArea")
            {
                if (win.WindowState == WindowState.Maximized)
                {
                    double top = SystemParameters.WorkArea.Top;
                    double left = SystemParameters.WorkArea.Left;
                    double right = SystemParameters.PrimaryScreenWidth - SystemParameters.WorkArea.Right;
                    double bottom = SystemParameters.PrimaryScreenHeight - SystemParameters.WorkArea.Bottom;
                    win.Margin = new Thickness(left, top, right, bottom);
                }
            }
        }
    }
}
