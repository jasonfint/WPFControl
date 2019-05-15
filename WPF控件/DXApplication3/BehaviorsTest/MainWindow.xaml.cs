using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using DevExpress.Xpf.Core;

namespace BehaviorsTest
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : DXWindow
    {
        public ChangeColorCommand ColorCommand { get; private set; }
        public MainWindow()
        {
            this.ColorCommand = new ChangeColorCommand(this);
            InitializeComponent();
            this.DataContext = this;
        }
    }
    public class ChangeColorCommand : ICommand
    {
        private MainWindow control;

#pragma warning disable CS0067 // The event is never used
        public event EventHandler CanExecuteChanged;
#pragma warning restore CS0067 // The event is never used

        public ChangeColorCommand(MainWindow control)
        {
            this.control = control;
        }

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            Brush currentBackground = this.control.Grid.Background;
            if (currentBackground != Brushes.DarkBlue)
            {
                this.control.Grid.Background = Brushes.DarkBlue;
            }
            else
            {
                this.control.Grid.Background = Brushes.DeepPink;
            }
        }
    }
}
