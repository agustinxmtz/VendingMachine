using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using VendingMachine.Models;

namespace VendingMachine.ViewModels
{
    public class ProductViewModel : ObservableObject
    {
        //Model the product view model represents
        private VendingItem _model;
        //Maximum number of Items allowed in this view model
        private const int _maxQuantity = 15;
        //Current quantity in the view model
        private int _quantity; 

        public int Id
        {
            get
            {
                return _model.Id;
            }
        }

        public int Quantity
        {
            get
            {
                return _quantity;
            }
            private set
            {
                _quantity = value;
                OnPropertyChanged("OutofStockMessage");
                OnPropertyChanged("InventoryDisplay");
                OnPropertyChanged("Quantity");

            }
        }

        // Formatted Dispaly message of this product quantity
        // Ex: "Coke: 5"
        public string InventoryDisplay
        {
            get
            {
                return _model.Name + ": " + _quantity;
            }
        }

        // return a copy of this model values
        public VendingItem Information
        {
            get
            {
                return _model;
            }
        }

        // Determin if we need to display an "Out of Stock" message
        public Visibility OutofStockMessage
        {
            get
            {
                if (Quantity > 0)
                    return Visibility.Hidden;

                return Visibility.Visible; 
            }
        }

        public ProductViewModel(int id, string name, double price)
        {
            _model = new VendingItem(id, name, price);
            Quantity = 0;
        }

        public int Refill()
        {
            var amount = _maxQuantity - Quantity;
            Quantity += amount;
            return amount;
        }

        public int Empty()
        {
            var amount = Quantity;
            Quantity = 0;
            return amount;
        }

        public bool Dispense()
        {
            if(Quantity > 0)
            {
                Quantity--;
                return true;
            }

            return false;
        }




    }
}
