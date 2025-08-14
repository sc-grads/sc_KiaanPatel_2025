﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassesApp
{
    internal class Car
    {
        // meber variable
        private string _model = "";
        private string _brand = "";
        private bool _isLuxury;

        public static int NumOfCars = 0;
        //constructor
        public Car(string model, string brand, bool isLuxury) 
        {
            _model = model;
            _brand = brand;
            IsLuxury = isLuxury;
            Console.WriteLine("A car of model " + model + " and brand " + brand + " has been created");
        }

        public string Model 
        { 
            get => _model; 
            set => _model = value;
        }

        public string Brand 
        {
            get
            {
                if (_isLuxury)
                {
                    return _brand + " is Luxury";
                }
                else
                {
                    return _brand;
                }
            }
            set
            {
                if(string.IsNullOrEmpty(value))
                {
                    Console.WriteLine("You entered nothing!");
                    _brand = "DEFAULTVALUE";
                } 
                else
                {
                    _brand = value;
                }
            } 
        }

        public bool IsLuxury 
        { 
            get => _isLuxury; 
            set => _isLuxury = value; 
        }

        public void Drive()
        {
            Console.WriteLine($"I'm a {Model} and I'm driving");
        }

        public Car()
        {
            NumOfCars++;
        }
    }
}
