using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Wpf最前端绘图
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.Loaded += MainWindow_Loaded;
            this.Deactivated += MainWindow_Deactivated;
            this.StateChanged += MainWindow_StateChanged;

        }
        /// <summary>
        /// 确保永远最大化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void MainWindow_StateChanged(object sender, EventArgs e)
        {
            this.WindowState = WindowState.Maximized;
        }
        /// <summary>
        /// 确保永远置顶
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void MainWindow_Deactivated(object sender, EventArgs e)
        {
            this.Topmost = true;
        }
        void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            List<string> list = new List<string>();
            list.Add("你们的");
            list.Add("生活");
            list.Add("真丰富");
            list.Add("不像我");
            list.Add("一个");
            list.Add("帅");
            list.Add("字");
            list.Add("竟贯穿了");
            list.Add("一生");
            Barrage(list);
        }

        /// <summary>
        /// 在Window界面上显示弹幕信息,速度和位置随机产生
        /// </summary>
        /// <param name="contentlist"></param>
        public void Barrage(IEnumerable<string> contentlist)
        {
            Random random = new Random();
            foreach (var item in contentlist)
            {   //获取位置随机数
                double randomtop = random.NextDouble();
                double inittop = canvas.ActualHeight * randomtop;
                //获取速度随机数
                double randomspeed = random.NextDouble();
                double initspeed = 50 * randomspeed;
                //实例化TextBlock和设置基本属性,并添加到Canvas中
                TextBlock textblock = new TextBlock();
                textblock.Text = item;
                textblock.FontSize = 50;
                Canvas.SetTop(textblock, inittop);
                canvas.Children.Add(textblock);
                //实例化动画
                DoubleAnimation animation = new DoubleAnimation();
                Timeline.SetDesiredFrameRate(animation, 60);  //如果有性能问题,这里可以设置帧数
                animation.From = 0;
                animation.To = canvas.ActualWidth;
                animation.Duration = TimeSpan.FromSeconds(initspeed);
                animation.AutoReverse = true;
                animation.RepeatBehavior = RepeatBehavior.Forever;
                animation.Completed += (object sender, EventArgs e) =>
                {
                    canvas.Children.Remove(textblock);
                };
                //启动动画
                textblock.BeginAnimation(Canvas.LeftProperty, animation);
                Process.GetCurrentProcess().Kill();

            }

        }

    }
}
