using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Enities
{
    public partial class CustomerFeedback
    {
        public int? CustomerIndex { get; set; }
        public int? StoreReviewed { get; set; }
        public int? CustomerRating { get; set; }
        public string CustomerFeedback1 { get; set; }

        public virtual Customers CustomerIndexNavigation { get; set; }
        public virtual Stores StoreReviewedNavigation { get; set; }
    }
}
