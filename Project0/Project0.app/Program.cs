using System;

namespace Project0.app
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }

    class Product
    {
        private int _invNumber;
        private string _productName;
        private string _productDescription;
        private double _productPrice;
        private int _orderThreshold;
        private string _productVendor;

        public int InvNumber { get => _invNumber; 
            set
            {
                if (value < 100_000 || value > 999_999)
                    throw new ArgumentOutOfRangeException("The inventory number must be between 100000 and 999999");
                else
                    _invNumber = value;
            }
        }
        public string ProductName { get => _productName; 
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("Product name may not be blank.");
                else
                    _productName = value;
            }
        }
        public string ProductDescription { get => _productDescription; 
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("Product description may not be blank.");
                else
                    _productDescription = value;
            }
        }
        public double ProductPrice { get => _productPrice; 
            set
            {
                if (value < 0)
                    throw new ArgumentOutOfRangeException("Product price may not be negative.");
                else
                    _productPrice = value;
            }
        }
        public int OrderThreshold { get; set; }
        public string ProductVendor { get; set; }
    }
}
