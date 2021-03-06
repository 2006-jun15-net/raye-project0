﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Xml.Serialization;

namespace Project0.DataAccess.Entities
{
    [Table("Customers", Schema = "Customer")]
    public partial class Customers
    {
        public int CustomerIndex { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string StreetAddress { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public int? Zip { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public int? PreferredStore { get; set; }

        public virtual Stores PreferredStoreNavigation { get; set; }
    }
}
