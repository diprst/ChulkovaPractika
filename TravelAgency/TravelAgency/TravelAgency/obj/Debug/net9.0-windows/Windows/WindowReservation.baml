   M S B A M L   `   `   `  ����G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:TravelAgency.WindowsTravelAgency.Windows  5   	   ,    &TravelAgency.Windows.WindowReservation   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:TravelAgency.Windows     5   	     � Title$  Reservations��5      $	��450��6)   $	��800��66   ���#D0D0E6.��5	      � .+�5
   
   � .+�5      �� 
���   �$��1q�6)    �� CornerRadius$ 10��6=   $��10q�6O   
�������._�5      �  � RowDefinitions 5      �� 5      $��* �6(   �� 5      $
��Auto �6(   .+�5      �� $W��QДобро пожаловать в Туристическое агентство!��6    $��19(�5      $
��Bold"�5      ���#333$��Center=�5      $	��Top=�5      $��0,10,0,0q�5      $��0��6&   �� 5       �� Orientation$ 
Horizontal=�6!   $��Center=�5      $��1��5      $��10q�5       .+�5!      �� -   5        $��Авиабилеты��5!   !   $��30��5"      $	��100��6!   ���#4CAF50
�������$
��Bold"�5$      $��14(�6'   $��5q�65   �� 5%      -   5        $��Клиенты��5%   !   $��30��5&      $	��100��6!   ���#4CAF50
�������$
��Bold"�5(      $��14(�6'   $��5q�65   �� 5)      -   5        $��Туры��5)   !   $��30��5*      $	��100��6!   ���#4CAF50
�������$
��Bold"�5,      $��14(�6'   $��5q�65   �� 5-      -   5        $��Гостиницы��5-   !   $��30��5.      $	��100��6!   ���#4CAF50
�������$
��Bold"�50      $��14(�6'   �� 51      -   5        $��
Выход��51   !   $��30��52      $	��100��6!   ���#4CAF50
�������$
��Bold"�54      $��14(�6'   $��5q�65   55      56      57      58      &   System.Windows.Controls.DataGrid  59   
   -   5        $��	dtgreserv��59   (   $��16,72,16,71q�6      AutoGenerateColumns$ False��69      Columns 5:      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn   Header$ IdReservation��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 5<   /   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6   �� *IdReservation+6/     5=      $ 	HotelName��6%   $ * 5>   B    6   �� *" IdHotelRoomNavigation.HotelName1+6B     5?      $ Payment��6%   $ * 5@   F    6   �� *&$IdPaymentNavigation.TransationStatus+6F     5A      $
 Tour��6%   $ * 5B   8    6   �� *IdTourNavigation.Title+68     5C      $ Client��6%   $ * 5D   8    6   �� *IdClientNavigation.Fio+68     5E      $ 	AirTicket��6%   $ * 5F   ?    6   �� *IdAirTicketNavigation.Airline+6?   5H      5I      5J      