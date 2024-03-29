﻿using CHMS.Models;
using Microsoft.EntityFrameworkCore;
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

namespace CHMS.Views
{
    /// <summary>
    /// Logika interakcji dla klasy RentedCarsView.xaml
    /// </summary>
    public partial class RentedCarsView : UserControl
    {
        private readonly RentedCarModelContext rentedCarModelContext = new RentedCarModelContext();
        private CollectionViewSource rentedCarsSrc;
        public RentedCarsView()
        {
            InitializeComponent();
            this.Loaded += new RoutedEventHandler(Window_Loaded);
            rentedCarsSrc = (CollectionViewSource)FindResource(nameof(rentedCarsSrc));
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            rentedCarModelContext.Database.EnsureCreated();
            rentedCarModelContext.RentedCars.Load();
            RentedCarsDataGrid.Items.Refresh();

            rentedCarsSrc.Source = rentedCarModelContext.RentedCars.Local.ToObservableCollection();
        }

        public void LoadData(RentedCarModel car)
        {
            rentedCarModelContext.Add(car);
            rentedCarModelContext.SaveChanges();
            RentedCarsDataGrid.Items.Refresh();
        }

        private void RefreshBtn_Click(object sender, RoutedEventArgs e)
        {
            RentedCarsDataGrid.Items.Refresh();
            rentedCarModelContext.SaveChanges();
        }

        private void RentedCarsDataGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (RentedCarsDataGrid.SelectedItem != null)
            {

                RentedCarModel selectedCar = (RentedCarModel)RentedCarsDataGrid.SelectedItem;


                CarModel car = new CarModel
                {
                    CarMake = selectedCar.RentedCarMake,
                    Car_Model = selectedCar.RentedCar_Model,
                    CarType = selectedCar.RentedCarType,
                    CarColor = selectedCar.RentedCarColor,
                    CarGearboxType = selectedCar.RentedCarGearboxType,
                    Cost = selectedCar.RentedCost
                };

                rentedCarModelContext.RentedCars.Remove(selectedCar);

                rentedCarModelContext.SaveChanges();
                RentedCarsDataGrid.Items.Refresh();

                AvailableCarsView availableCarsView = new AvailableCarsView();
                availableCarsView.LoadData(car);
                availableCarsView.CarsDataGrid.Items.Refresh();
    }
        }

        private void RentedCarsDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
