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
    /// Interaction logic for NewBookWindow.xaml
    /// </summary>
    public partial class NewBookWindow : Window
    {
        public NewBookWindow()
        {
            InitializeComponent();
        }

        private void newButton_Click(object sender, RoutedEventArgs e)
        {
            Book book = new Book()
            {
                Title = titleTextBox.Text,
                Author = authorTextBox.Text,
                PublicationYear = Int32.Parse(publicationYearTextBox.Text),
                Genre = genreTextBox.Text,
                QuantityInStock = Int32.Parse(quantityInStockTextBox.Text)
            };

            using(SQLiteConnection conn = new SQLiteConnection(App.databasePath))
            {
                conn.CreateTable<Book>();
                conn.Insert(book);
            }

            Close();
        }
    }
}
