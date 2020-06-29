﻿using System;
using System.Collections.Generic;

namespace Project0.dataaccess.Entities
{
    public partial class Costumers
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
