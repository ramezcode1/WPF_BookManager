   M S B A M L   `   `   `  ����J  FWPF_BookManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BookstoreInventoryBookstoreInventory  5   	   '    !WPF_BookManager.BookDetailsWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:BookstoreInventory     5   	     � Title$  BookDetailsWindow��5   	   $	��550��6#   $	��700��60   $	��400��6<   $	��300��6K   .��5	      � $��16(�6   $��20q�6#    � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��3* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��40,0,0,0q�6   $��Update book��6&   $
��Bold"�69   $��20(�6K   $��0��5      $��2��6   �� 5   
   $��Title:��6   $��14(�6!   $��Italic$�6/   $��0,0,10,0q�6B   $��Center=�5      $��Right=�6+   $��1��6G   �� 5   
   -   5         ��Name$ titleTextBox��5      $��3q�5      $��Center=�6   $��1��5      $��1��6   �� 5   
   $��Author:��6   $��14(�6"   $��Italic$�60   $��0,0,10,0q�6C   $��Center=�5      $��Right=�6+   $��2��6G   �� 5    
   -   5        $ authorTextBox��5       $��3q�5!      $��Center=�6   $��2��5"      $��1��6   �� 5#   
   $��PublicationYear:��6   $��14(�6+   $��Italic$�69   $��0,0,10,0q�6L   $��Center=�5$      $��Right=�6+   $��3��6G   �� 5%   
   -   5        $ publicationYearTextBox��5%      $��3q�5&      $��Center=�6   $��3��5'      $��1��6   �� 5(   
   $��Genre:��6   $��14(�6!   $��Italic$�6/   $��0,0,10,0q�6B   $��Center=�5)      $��Right=�6+   $��4��6G   �� 5*   
   -   5        $ genreTextBox��5*      $��3q�5+      $��Center=�6   $��4��5,      $��1��6   �� 5-   
   $��QuantityInStock:��6   $��14(�6+   $��Italic$�69   $��0,0,10,0q�6L   $��Center=�5.      $��Right=�6+   $��5��6G   �� 5/   
   -   5        $ quantityInStockTextBox��5/      $��3q�50      $��Center=�6   $��5��51      $��1��6   �� 52   
   -   5        $��Update��53      
��� d �
�������$��	15,3,15,3q�54      $
��Left=�6%   $��Center=�6@   $��7��55      $��1��6   �� 56   
   -   5        $��Delete��57      
���  ��
�������$��	15,3,15,3q�58      $��Center=�6%   $��Center=�6B   $��7��59      $��1��6   5:      5;      