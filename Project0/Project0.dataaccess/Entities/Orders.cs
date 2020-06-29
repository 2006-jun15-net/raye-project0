﻿using System;
using System.Collections.Generic;

namespace Project0.dataaccess.Entities
{
    public partial class Orders
    {
        public int OrderIndex { get; set; }
        public string OrderId { get; set; }
        public int CustomerId { get; set; }
        public DateTime? OrderDateTime { get; set; }
        public int OrderStatus { get; set; }
        public DateTime? OrderStatusDate { get; set; }
    }
}