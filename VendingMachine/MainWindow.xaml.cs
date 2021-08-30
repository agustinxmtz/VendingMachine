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
using VendingMachine.ViewModels;

namespace VendingMachine
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private MachineViewModel _machine = new MachineViewModel();
        public MainWindow()
        {
            InitializeComponent();
            DataContext = _machine;
        }

        private void Purchase_Clicked(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            _machine.Purchase(button.DataContext);
        }

        private void Insert01_Clicked(object sender, RoutedEventArgs e)
        {
            _machine.InsertChange(0.01);
        }

        private void Insert05_Clicked(object sender, RoutedEventArgs e)
        {
            _machine.InsertChange(0.05);
        }

        private void Insert10_Clicked(object sender, RoutedEventArgs e)
        {
            _machine.InsertChange(0.10);
        }

        private void Insert25_Clicked(object sender, RoutedEventArgs e)
        {
            _machine.InsertChange(0.25);
        }

        private void Refill_Clicked(object sender, RoutedEventArgs e)
        {
            _machine.Refill();
        }

        private void Empty_Clicked(object sender, RoutedEventArgs e)
        {
            _machine.Empty();
        }

        private void Withdraw_Clicked(object sender, RoutedEventArgs e)
        {
            _machine.CollectPayments();
        }
    }
}
