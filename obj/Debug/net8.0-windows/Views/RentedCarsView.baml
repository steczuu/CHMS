   M S B A M L   `   `   `  ����?  ;CHMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:CHMS.Views
CHMS.Views  5      1clr-namespace:CHMS.ViewModelsCHMS.ViewModels  5          CHMS.Views.RentedCarsView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:CHMS.Views     5      ,vmclr-namespace:CHMS.ViewModels     5         
Page_Style#��[  5
        � DataContext  5      "   CHMS.ViewModels.RentedCarsVM  5   
    � 	Resources 5        rentedCarsSrc��%   &	       �� 5   
   6   5      .��5      � .+�5   
   �� ���#272B2F6   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ RentedCarsDataGrid��5         AutoGenerateColumns$ False��5         EnableRowVirtualization$
 True��5      ���#272B2F���#189AB4$	��600��5      $	��Top=�5      ��5      ��  �� Source# [    Columns 5!      0  *System.Windows.Controls.DataGridTextColumn  5"      ,  &System.Windows.Controls.DataGridColumn   Header$ Car make��5#   !      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 63   	   
IsReadOnly$
	 True��5$   !   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 5"   %   �� *RentedCarMake+5$   !     5&      $ 	Car model��5'   !   $ SizeToHeader 64   $
	 True��5(   !   
 5&   %   �� *RentedCar_Model+5(   !     5*      $ Car type��5+   !   $ SizeToHeader 63   $
	 True��5,   !   
 5*   %   �� *RentedCarType+5,   !     5.      $ 	Car color��5/   !   $ SizeToHeader 64   $
	 True��50   !   
 5.   %   �� *RentedCarColor+50   !     52      $ Car gearbox type��53   !   $ SizeToHeader 6;   $
	 True��54   !   
 52   %   �� *RentedCarGearboxType+54   !     56      $ Cost per day��57   !   $ SizeToHeader 67   $
	 True��58   !   
 56   %   �� *
RentedCost+58   !     5:      $ Rental date��5;   %   $ SizeToHeader 6:   $
	 True��5<   %   
 5:   %   �� *
RentedDate+5<   %     5>      $
 Name��5?   %   $ SizeToHeader 63   $
	 True��5@   %   
 5>   %   �� *Name+5@   %     5B      $ Surname��5C   %   $ SizeToHeader 66   $
	 True��5D   %   
 5B   %   �� *	Surname+5D   %     5F      $ Loan period��5G   %   $ SizeToHeader 6:   $
	 True��5H   %   
 5F   %   �� *
LoanPeriod+5H   %   5L      5M      5N      