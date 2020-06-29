using System;
using System.Collections.Generic;
using System.Net.Http.Headers;

namespace Project0.library
{
    public class Store
    {
        private int _storeNumber;
        private string _storeStreetAddress;
        private string _storeCity;
        private int _storeZip;
        private string _storePhone;
        private string _storeWebAddress;
        private string _storeEmail;
        private string _storeManagerName;

        public int StoreNumber { get => _storeNumber;
            set
            {
                if (value < 0 || value > 999)
                {
                    if (value != 999_999_999) //the executive manager will have a virtual store with extra functions
                        throw new ArgumentOutOfRangeException("Store numbers must be between 1 and 999");
                    else
                        _storeNumber = value;
                }
                _storeNumber = value;
            }
        }
        public string StoreStreetAddress { get => _storeStreetAddress;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("A store's street address can not be empty.");
                else
                    _storeStreetAddress = value;
            }
        }
        public string StoreCity { get => _storeCity;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("The store's city can not be blank");
                else
                    _storeCity = value;
            }
        }
        public string StoreState { get; set; }
        public int StoreZip { get => _storeZip;
            set
            {
                if (value < 10_000 || value > 99_999)
                    throw new ArgumentOutOfRangeException("A zip code must be a 5 digit number.");
                else
                    _storeZip = value;
            }
        }
        public string StorePhone
        {
            get
            {
                return _storePhone;
            }
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

        public int InvNumber
        {
            get => _invNumber;
            set
            {
                if (value < 100_000 || value > 999_999)
                    throw new ArgumentOutOfRangeException("The inventory number must be between 100000 and 999999");
                else
                    _invNumber = value;
            }
        }
        public string ProductName
        {
            get => _productName;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("Product name may not be blank.");
                else
                    _productName = value;
            }
        }
        public string ProductDescription
        {
            get => _productDescription;
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("Product description may not be blank.");
                else
                    _productDescription = value;
            }
        }
        public double ProductPrice
        {
            get => _productPrice;
            set
            {
                if (value < 0)
                    throw new ArgumentOutOfRangeException("Product price may not be negative.");
                else
                    _productPrice = value;
            }
        }
        public int OrderThreshold { get => _orderThreshold; 
            set
            {
                if (value < 0)
                    throw new ArgumentOutOfRangeException("Please enter a percentage [from 0.0 inclusive to 1.0 exclusive]");
                else
                    _orderThreshold = value;
            }
        }
        public string ProductVendor { get => _productVendor; 
            set
            {
                if (string.IsNullOrWhiteSpace(value))
                    throw new ArgumentException("Please provide a vendor name.");
                else
                    _productVendor = value;
            }
        }
    }

}
