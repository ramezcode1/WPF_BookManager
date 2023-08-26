using SQLite;
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
using System.Windows.Shapes;
using WPF_BookManager.Classes;

namespace WPF_BookManager
{
    /// <summary>
    /// Interaction logic for BookDetailsWindow.xaml
    /// </summary>
    public partial class BookDetailsWindow : Window
    {
        Book book;
        public BookDetailsWindow(Book book)
        {
            InitializeComponent();
            this.book = book;
            titleTextBox.Text = book.Title;
            authorTextBox.Text = book.Author;
            publicationYearTextBox.Text = book.PublicationYear.ToString();
            genreTextBox.Text = book.Genre;
            quantityInStockTextBox.Text = book.QuantityInStock.ToString();
        }

        private void updateButton_Click(object sender, RoutedEventArgs e)
        {
            book.Title = titleTextBox.Text;
            book.Author = authorTextBox.Text;
            book.PublicationYear = Int32.Parse(publicationYearTextBox.Text);
            book.Genre = genreTextBox.Text;
            book.QuantityInStock = Int32.Parse(quantityInStockTextBox.Text);

            using (SQLiteConnection conn = new SQLiteConnection(App.databasePath))
            {
                conn.CreateTable<Book>();
                conn.Update(book);
            }

            Close();
        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            using (SQLiteConnection conn = new SQLiteConnection(App.databasePath))
            {
                conn.CreateTable<Book>();
                conn.Delete(book);
            }

            Close();
        }
    }
}
