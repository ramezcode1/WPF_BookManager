﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace WPF_BookManager
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        static string databaseName = "Books.db";
        static string folderPath = "..\\..\\..\\";      //Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        public static string databasePath = Path.Combine(folderPath, databaseName);
    }
}
