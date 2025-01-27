using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Jasdeep_BookStore.Models
{
    public class Book
    {
        public int id { get; set; }
        public string title { get; set; }
        public string shortDesc { get; set; }
        public string description { get; set; }
        public double price { get; set; }
        public string author { get; set; }

        public Book(int id, string title, string shortDesc, string description, double price, string author)
        {
            this.id = id;
            this.title = title;
            this.shortDesc = shortDesc;
            this.description = description;
            this.price = price;
            this.author = author;
        }
    }
}