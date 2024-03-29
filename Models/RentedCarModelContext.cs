﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CHMS.Models
{
    public class RentedCarModelContext : DbContext
    {
        public DbSet<RentedCarModel> RentedCars { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Data Source = RentedCars.db");
            optionsBuilder.UseLazyLoadingProxies();
        }
    }
}
