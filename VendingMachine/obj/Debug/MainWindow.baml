   M S B A M L   `   `   `  ����I  EVendingMachine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:VendingMachineVendingMachine  5   	       VendingMachine.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:VendingMachine     5   	     � Title$  VendingMachine��5   	   $	��600��6    $	��500��6-   .��5	      � 
���<�� � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� 
����=H�$��5��60   .+�5      ��    
TitleBlock#��[  6   Agustin Vending6O   5      �� 5   
     VendingList#��[ 6   $��1��6W   $��3��6d   $��4��6x   ��69   �� *Items+��5       �� 5!      .R�5"      ]� .+�5#      �� -   5          VendingButton#��[ 5#   9   $
��Left=�6`    � DataContext 6!   �� .��6�   
Purchase5%      �� 5&      $��Right=�6%   .+�5'      ��   CustomerLabel#��[ 6(   ��6O   �� *Information.Name+�� 5(      #��[ 6(   ��6O   �� *Information.Price+ �� StringFormat$ 	${0:0.00}���� 5)      
���  ��$��Out of Stock��69   y�6M   �� *OutofStockMessage+5*      5+      5,      5.      �� 50   
   -   5          MoneyButton#��[ 50      $��5��66   .��6\   Penny52      �� 53   
   -   5        #��[ 53      $��5��66   $��1��6C   .��6l   Nickle55      �� 56   
   -   5        #��[ 56      $��5��66   $��2��6C   .��6l   Dime58      �� 59   
   -   5        #��[ 59      $��6��66   $��2��6C   .��6l   	Quarter5;      �� 5>   
   $��6��6   $��3��6"   .+�5?      �� #��[ 6   ��6?   �� *Bank.Inserted+$ Inserted ${0:0.00}���� 5@      #��[ 6   ��6?   �� *Bank.Change+$ Change ${0:0.00}��5A      ]� 5C   
   $��5q�6   $��1��6   $��3��6,   $��2��6<   $��3��6P   
����� �.+�5D      �� $	��Top=�6   $��28(�6-   #��[ 6;   $��Center=�6b   	Inventory6�   �� 5E      $��Bottom=�6   .+�5F      �� $��5q�6   #��[ 6'   $��16(�6N   ��6\   �� *Items[0].InventoryDisplay+�� 5G      $��5q�6   #��[ 6'   $��16(�6N   ��6\   �� *Items[1].InventoryDisplay+�� 5H      $��5q�6   #��[ 6'   $��16(�6N   ��6\   �� *Items[2].InventoryDisplay+5I      5J      �� 5L   
   $��4��6   $��3��6"   $��2��62   $��3��6F   
�������.+�5M      �� $	��Top=�6   $��28(�6-   #��[ 6;   $��Center=�6b   	Manager6�   �� 5N      -   5          ManagerButton#��[ 5N      .��6S   Refill Supply5P      �� 5Q      -   5        #��[ 5Q      .��6R   Empty Supply5S      �� 5T      -   5        #��[ 5T      .��6U   Withdraw Payment5V      5Y      5^      5_      