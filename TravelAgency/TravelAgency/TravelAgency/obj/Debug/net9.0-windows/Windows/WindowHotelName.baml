   M S B A M L   `   `   `  ����G  CTravelAgency, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:TravelAgency.WindowsTravelAgency.Windows  5   	   *    $TravelAgency.Windows.WindowHotelName   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:TravelAgency.Windows     5   	     � Title$  	HotelName��5      $	��747��6#   $	��400��60   ���#D0D0E6.��5	      � $��
10,10,10,4q�6   .+�5
   
   ��  �� CornerRadius$ 10��6   
�������$��1q�66   
���   � �� Padding$ 20q�6^   $��0,0,0,10q�6k   ._�5      � $��0,0,0,29q�6    � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   .+�5      �� $��0��6   $1��+Бронирование гостиницы��6)   $��24(�6G   $
��Bold"�6U   $��Center=�5      $��0,0,0,20q�6-   �� 5      $��2��6   $��1q�6&   ���#C0C0C0$ 5��6P   $	��0,5q�6a   ._�5      �  5      �� 5      $
��Auto �6,   �� 5      $��* �6,   .+�5!      �� $��0��6    $#��Местоположение:��6-   $
��Bold"�6G   $��10q�6Y   �� 5"      -   5        $��txtLocation��5"   /   $��1��6"   $	��290��6B   ���#F5F5F5���#C0C0C0$��1q�5#   0   $��5q�6D   $��10q�6P   ��6]   �� *
HotelName1+5$      5%      �� 5'      $��3��6   $��1q�6&   ���#C0C0C0$ 5��6P   $	��0,5q�6a   ._�5(      �  5)      �� 5*      $
��Auto �6,   �� 5+      $��* �6,   .+�5-      �� $��0��6    $��Рейтинг:��6-   $
��Bold"�6@   $��10q�6R   �� 5.      -   5        $��txtLocationRating��5.   /   $��1��6"   $	��290��6H   ���#F5F5F5���#C0C0C0$��1q�5/   0   $��5q�6D   $��10q�6P   ��6]   �� *LocationRating+50      51      �� 53      $��4��6   $��1q�6&   ���#C0C0C0$ 5��6P   $	��0,5q�6a   ._�54      �  55      �� 56      $
��Auto �6,   �� 57      $��* �6,   .+�59      �� $��0��6    $��Тип номера:��6-   $
��Bold"�6C   $��10q�6U   �� 5:      -   5        $��txtRoomType��5:   /   $��1��6"   $	��290��6B   ���#F5F5F5���#C0C0C0$��1q�5;   0   $��5q�6D   $��10q�6P   ��6]   �� *
RoomType+5<      5=      �� 5?      $��5��6   $��1q�6&   ���#C0C0C0$ 5��6P   $	��0,5q�6a   ._�5@      �  5A      �� 5B      $
��Auto �6,   �� 5C      $��* �6,   .+�5E      �� $��0��6    $��	Цена:��6-   $
��Bold"�6=   $��10q�6O   �� 5F      -   5        $��txtPrice��5F   /   $��1��6"   $	��290��6?   ���#F5F5F5���#C0C0C0$��1q�5G   0   $��5q�6D   $��10q�6P   ��6]   �� *Price+5H      5I      5J      5L      �� 5M   
   -   5         ��Name$ 	btnSubmit��5M      $ ��Забронировать��6$   ���#4CAF50
�������$
��Bold"�5N   1   $	��140��6C   $��38,625,202,46q�6O   �� 5O   
   -   5        $
 Back��5O      $��
Назад��6   ���#4CAF50
�������$
��Bold"�5P      $	��140��6.   $��190,625,50,46q�5Q   	   5R      5S      