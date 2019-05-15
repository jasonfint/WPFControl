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

namespace WPFTextBox实现按字节长度限制输入功能
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            string datelong = "2019-03-20 14:54:10.900";
            bool iscon = datelong.Contains(DateTime.Now.ToString("yyyy-MM-dd"));
            tb.Text = iscon.ToString();
            double startBalance = 100.0;

            int[] attemptedWithdrawals = { 20, 10, 40, 50, 10, 70, 30 };

            double endBalance =
                attemptedWithdrawals.Aggregate(startBalance,
                    (balance, nextWithdrawal) =>
                        ((nextWithdrawal <= balance) ? (balance - nextWithdrawal) : balance));
            tb.Text = endBalance.ToString();
            List<Student> list = new List<Student>();
            List<Student> list2 = new List<Student>();

            Student a = new Student
            {
                UserId = 1,
                StudentName = "Eric"

            };
            Student b = new Student
            {
                UserId = 1,
                StudentName = "Eric"

            };

            Student c = new Student
            {
                UserId = 2,
                StudentName = "laoyi"

            };
            Student d = new Student
            {
                UserId = 3,
                StudentName = "laoyi"

            };
            list.Add(a);
            list.Add(b);

            list.Add(c);
            list2.Add(c);
            list2.Add(b);

            list2.Add(a);

            var tt = list.OrderBy(x=>x.UserId).SequenceEqual(list2.OrderBy(x=>x.UserId), new StudentComparer());
            //tb.Text = DateTime.Now.Date.AddHours(17).ToString();
        }
        public class Student
        {
            public int UserId { get; set; }
            public string StudentName { get; set; }
        }
        public class StudentComparer : IEqualityComparer<Student>
        {
            public bool Equals(Student x, Student y)
            {
                return x.UserId.Equals(y.UserId);
            }

            public int GetHashCode(Student obj)
            {
                return obj.UserId.GetHashCode();
            }
        }
    }
}
