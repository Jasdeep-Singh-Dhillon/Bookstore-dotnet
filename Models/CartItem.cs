using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Jasdeep_BookStore;
using Jasdeep_BookStore.Models;

namespace Models
{

    public class CartItem
    {
        public Book Book { get; set; }
        public int quantity { get; set; }

        public CartItem(Book book, int quantity)
        {
            Book = book;
            this.quantity = quantity;
        }

        public void AddQuantity(int quantity)
        {
            this.quantity += quantity;
        }

        public string Display()
        {
            return string.Format("{0} ({1} at {2})",
            Book.title,
            quantity.ToString(),
            Book.price.ToString("c"));
        }
    }
}
