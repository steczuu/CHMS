   M S B A M L   `   `   `  ����?  ;CHMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:CHMS.ResourcesCHMS.Resources  5   	   1clr-namespace:CHMS.ViewModelsCHMS.ViewModels  5   	       LMS.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,Btnclr-namespace:CHMS.Resources     5   	   ,vmclr-namespace:CHMS.ViewModels     5   	   -   5          � Title$  
MainWindow��5	   	   $	��600��5
   	   $	��850��5   	    � 
ResizeMode$ NoResize=�5   	    � AllowsTransparency$
 True��5   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � DataContext 5      '   !CHMS.ViewModels.NavigationHandler  5   
   .��5      � .+�5   
   �� ���#2125296   � 5   
    � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5       � RowDefinitions 5       �� 5!      $��50 �6    �� 5"      .+�5%      �� -   5         ��Name$ MinimizeBtn��5%      $��1��5&      $��0��5'      
������ $��0q�5)      $��-��5*      ���#189AB4$��25(�5,      	 � Cursor$
	 Hand��5-      $	��Top=�5/      $��Right=�50      $��0,0,35,0q�51      52      �� 54      -   5        $ CloseBtn��54      $��1��55      $��0��56      
������ $��0q�58      $��X��59      
���  ��$��25(�5;      $
	 Hand��5<      $	��Top=�5>      $��Right=�5?      $��0,0,10,0q�5@      5A      � 5C      .+�5D      �� ���#272B2F._�5E      �� $��AutoRent��6    $��30��5F   !   ���#189AB4$
��Bold"�5H   !   $��23(�5I   !   $	��Top=�5J   !   $��Center=�5K   !   $��0,20,0,0q�5L   !   5M      5N      � 5P      $��0��6   $��1��6#   .+�5Q      �� ���#272B2F6   �� 5S      $	��400��6   .+�5U      	� -   5        
 	�Name$
 HomeBtn��5U   "      BtnStyle#��[  5W   "   $��2��5X   !   
������ $��0q�5Z   !   $
��Home��5[   !   ���#189AB4$��25(�5]   !   $
	 Hand��5^   !   $��0,20,0,0q�5_   !    d� 	IsChecked$
 TrueY�5`   !   ��5V   !   �� *HomeCommand+5a      	� 5c      -   5        $
 AvailableCarsBtn��5c   "   #��[  5e   "   $��2��5f      
������ $��0q�5h      $��Available Cars��5i      ���#189AB4$��25(�5k      $
	 Hand��5l      $��0,20,0,0q�5m      ��5d   "   �� *AvailableCarsCommand+5n      	� 5p      -   5        $
 RentInfoBtn��5p   "   #��[  5r   "   $��2��5s      
������ $��0q�5u      $��Rented Cars��5v      ���#189AB4$��25(�5x      $
	 Hand��5y      $��0,20,0,0q�5z      ��5q   "   �� *RentInfoCommand+5{      5}      5~      � 5�      $��1��6   $��1��6#   .+�5�      �� -   5         ��Name$ Pages��5�   !   ��5�      �� *CurrentView+5�      5�      5�      5�      