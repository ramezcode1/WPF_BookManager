   M S B A M L   `   `   `  ����J  FWPF_BookManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:BookstoreInventoryBookstoreInventory  5   	        WPF_BookManager.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:BookstoreInventory     5   	     � Title$  
MainWindow��5   	   $	��550��6   $	��700��6)   $	��500��65   .��5	      � $��16(�6   $��10q�6#    � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� -   5        $��10q�5   :   $��3q�6F   $�� ��6R   $��Bottom=�5      $��0��6-   �� 5   
   -   5        $��New Book��5      $��Right=�6$   $��10q�6@   $��Bottom=�5      
������
�������$��1��5      $��	15,3,15,3q�6!   �� 5   
   -   5        $��	Edit Book��5      $
��Left=�6%   $��10q�6@   $��Bottom=�5      
��� d �
�������$��1��5       $��	15,3,15,3q�6!   �� 5!   
   -   5         ��Name$ booksListView��5!      $��14(�6*   $��10q�5#      $��1��6   $��6��6,   ��5$      �� 5%      .R�5&      �� ��6    �� *Title+5'      5)      �� 5*   
   $��Book information��6   $��1��6+   $��1��68   $��Center=�5+      $��Bottom=�6-   �� 5,   
   $��2��6   $��1��6"   $��10q�62   $��Center=�6>   .+�5-      �� $��Title:��6   $��-2q�6%   $��14(�61   $��Italic$�6?   
������6R   �� 5.      -   5         ��Name$ titleTextBlock��5.      $�� ��5/      $��SemiBold"�6     �� Padding$ 3q�66   ���	#7FD3D3D3$��15(�50   /   51      �� 52   
   $��3��6   $��1��6"   $��10q�62   $��Center=�6>   .+�53      �� $��Author:��6   $��-2q�6&   $��14(�62   $��Italic$�6@   
������6S   �� 54      -   5        $ authorTextBlock��54      $�� ��55      $��SemiBold"�6    $ 3q�66   ���	#7FD3D3D3$��15(�56   /   57      �� 58   
   $��4��6   $��1��6"   $��10q�62   $��Center=�6>   .+�59      �� $��PublicationYear:��6   $��-2q�6/   $��14(�6;   $��Italic$�6I   
������6\   �� 5:      -   5        $ publicationYearTextBlock��5:      $�� ��5;      $��SemiBold"�6    $ 3q�66   ���	#7FD3D3D3$��15(�5<   /   5=      �� 5>   
   $��5��6   $��1��6"   $��10q�62   $��Center=�6>   .+�5?      �� $��Genre:��6   $��-2q�6%   $��14(�61   $��Italic$�6?   
������6R   �� 5@      -   5        $ genreTextBlock��5@      $�� ��5A      $��SemiBold"�6    $ 3q�66   ���	#7FD3D3D3$��15(�5B   /   5C      �� 5D   
   $��6��6   $��1��6"   $��10q�62   $��Center=�6>   .+�5E      �� $��QuantityInStock:��6   $��-2q�6/   $��14(�6;   $��Italic$�6I   
������6\   �� 5F      -	   5        $ quantityInStockTextBlock��5F      $�� ��5G      $��SemiBold"�6    $ 3q�66   ���	#7FD3D3D3$��15(�5H   /   5I      5J      5K      