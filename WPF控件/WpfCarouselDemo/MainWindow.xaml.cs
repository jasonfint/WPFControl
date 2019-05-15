﻿using System.Windows;

namespace WpfCarouselDemo
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            DataContext = new ViewModel.MainViewModel();

            _carouselDABRadioStations.SelectionChanged += _carouselDABRadioStations_SelectionChanged;
        }

        private void _carouselDABRadioStations_SelectionChanged(FrameworkElement selectedElement)
        {
            var viewModel = DataContext as ViewModel.MainViewModel;
            if (viewModel == null)
            {
                return;
            }

            viewModel.SelectedRadioStationDAB = selectedElement.DataContext as Model.RadioStation;
        }

        private void _buttonLeftArrow_Click(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as ViewModel.MainViewModel;
            if (viewModel == null)
            {
                return;
            }

            int pos = viewModel.SelectedRadioStationDAB != null ? viewModel.RadioStationsDAB.IndexOf(viewModel.SelectedRadioStationDAB) : 0;
            if (pos > 0)
            {
                viewModel.SelectedRadioStationDAB = viewModel.RadioStationsDAB[pos - 1];
            }
            else if (pos == 0)
            {
                viewModel.SelectedRadioStationDAB = viewModel.RadioStationsDAB[viewModel.RadioStationsDAB.Count - 1];
            }
        }

        private void _buttonRightArrow_Click(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as ViewModel.MainViewModel;
            if (viewModel == null)
            {
                return;
            }

            int pos = viewModel.SelectedRadioStationDAB != null ? viewModel.RadioStationsDAB.IndexOf(viewModel.SelectedRadioStationDAB) : 0;
            if (pos < (viewModel.RadioStationsDAB.Count - 1))
            {
                viewModel.SelectedRadioStationDAB = viewModel.RadioStationsDAB[pos + 1];
            }
            else if (pos == (viewModel.RadioStationsDAB.Count - 1))
            {
                viewModel.SelectedRadioStationDAB = viewModel.RadioStationsDAB[0];
            }
        }

        private void _checkBoxVerticalCarousel_Click(object sender, RoutedEventArgs e)
        {
            _carouselDABRadioStations.VerticalOrientation = _checkBoxVerticalCarousel.IsChecked.HasValue ? _checkBoxVerticalCarousel.IsChecked.Value : false;
        }
    }
}
