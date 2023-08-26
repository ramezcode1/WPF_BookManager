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
using System.Windows.Navigation;
using System.Windows.Shapes;
using WPF_BookManager.Classes;

namespace WPF_BookManager
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        List<Book> books;
        public MainWindow()
        {
            InitializeComponent();
            this.books = new List<Book>();

            readDatabase();
            booksListView.SelectedIndex = 0;
        }


        void readDatabase()
        {
            using(SQLiteConnection conn = new SQLiteConnection(App.databasePath))
            {
                conn.CreateTable<Book>();
                books = conn.Table<Book>().OrderBy(b => b.Title).ToList();
            }

            if (books != null)
            {
                booksListView.ItemsSource = books;
            }
        }

        private void booksListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Book book = booksListView.SelectedItem as Book;
            if (book != null)
            {
                titleTextBlock.Text = book.Title;
                authorTextBlock.Text = book.Author;
                publicationYearTextBlock.Text = book.PublicationYear.ToString();
                genreTextBlock.Text = book.Genre;
                quantityInStockTextBlock.Text = book.QuantityInStock.ToString();
            }
        }

        private void newButton_Click(object sender, RoutedEventArgs e)
        {
            NewBookWindow newBookWindow = new NewBookWindow();
            newBookWindow.ShowDialog();

            readDatabase();
            booksListView.SelectedIndex = 0;
        }

        private void editButton_Click(object sender, RoutedEventArgs e)
        {
            Book selectedBook = booksListView.SelectedItem as Book;
            if (selectedBook != null)
            {
                BookDetailsWindow bookDetailsWindow = new BookDetailsWindow(selectedBook);
                bookDetailsWindow.ShowDialog();

                readDatabase();
                booksListView.SelectedIndex = 0;
            }
        }

        private void searchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            TextBox searchTextBox = sender as TextBox;
            string query = searchTextBox.Text.ToLower();

            var filteredList = books.Where(b => b.Title.ToLower().Contains(query)).OrderBy(b => b.Title).ToList();
            booksListView.ItemsSource = filteredList;
            booksListView.SelectedIndex = 0;
        }
    }
}
