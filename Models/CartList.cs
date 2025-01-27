using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Models
{
    public class CartList
    {
        public List<CartItem> Items { get; }
        public int Count { get { return Items.Count; } }
        public CartList()
        {
            Items = new List<CartItem>();
        }

        public CartList(CartItem item)
        {
            Items = new List<CartItem>();
            Items.Add(item);
        }

        public void addToCart(CartItem item)
        {
            int itemIndex = getItemIndex(item.Book.id);
            if (itemIndex != -1)
            {
                Items[itemIndex].AddQuantity(item.quantity);
                return;
            }
            Items.Add(item);
        }

        public int getItemIndex(int bookId)
        {
            for (int index = 0; index < Items.Count; index++)
            {
                if (Items[index].Book.id == bookId)
                {
                    return index;
                }
            }
            return -1;
        }

        public static CartList GetCart()
        {
            CartList cartList = (CartList)HttpContext.Current.Session["Cart"];
            if (cartList == null)
            {
                cartList = new CartList();
                HttpContext.Current.Session["Cart"] = cartList;
            }
            return cartList;
        }

        public CartItem getItem(int bookId)
        {
            return Items[getItemIndex(bookId)];
        }

        public void removeItem(int bookId)
        {
            Items.RemoveAt(getItemIndex(bookId));
        }

        public void Clear()
        {
            Items.Clear();
        }

        public string Display()
        {
            string list = "";
            foreach (CartItem item in Items)
            {
                list += item.Display() + "\n";
            }
            return list;
        }
    }
}