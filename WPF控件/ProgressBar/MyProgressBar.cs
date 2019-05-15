using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace ProgressBarType
{
    public sealed class MyProgressBar :ProgressBar
    {
        public MyProgressBar()
        {
            this.DefaultStyleKey = typeof(ProgressBar);
            this.Loaded += (sender, args) => TemplateSettings = new MyProgressBarTemplateSettings(this);
        }

        public static readonly DependencyProperty TemplateSettingsProperty = DependencyProperty.Register(
            "TemplateSettings", typeof(MyProgressBarTemplateSettings), typeof(MyProgressBar),
            new PropertyMetadata(default(MyProgressBarTemplateSettings)));

        public  MyProgressBarTemplateSettings TemplateSettings
        {
            get { return (MyProgressBarTemplateSettings)GetValue(TemplateSettingsProperty); }
            set { SetValue(TemplateSettingsProperty, value); }
        }
    }
    public class MyProgressBarTemplateSettings : DependencyObject
    {
        public MyProgressBarTemplateSettings()
        {
        }

        public MyProgressBarTemplateSettings(MyProgressBar progressBar)
        {
            ContainerAnimationStartPosition = -1 * progressBar.ActualWidth / 10;
            ContainerAnimationEndPosition = progressBar.ActualWidth * 5 / 8;
            EllipseAnimationEndPosition = progressBar.ActualWidth * 2 / 3;
            EllipseAnimationWellPosition = progressBar.ActualWidth / 3;
            EllipseOffset = 4;
            EllipseDiameter = 12;
        }

        public double ContainerAnimationEndPosition { get; set; }
        public double ContainerAnimationStartPosition { get; set; }
        public double EllipseAnimationEndPosition { get; set; }
        public double EllipseAnimationWellPosition { get; set; }
        public double EllipseDiameter { get; set; }
        public double EllipseOffset { get; set; }
        public double IndicatorLengthDelta { get; set; }
    }
}
