   M S B A M L   `   `   `  ����J  FTelegramStyleHW, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:TelegramStyleHWTelegramStyleHW  5   	        TelegramStyleHW.MainWindow   5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:TelegramStyleHW     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � 	Resources 5
       �� Source�� 5   
   $ DarkStyle.xaml?�6   %    .��5      �� .+�5   
   �� -   5         ��Name$ styleBox��5      ���	#FF2A91C1$��5��6<   � 5   
   -   5        $��	MainTheme��5      .+�5      � -   5        $��Telegram��5      $��	0,0,0,367q�6#   ���	#FF2A91C1.+�5      �� $��Telegram��6   $��54,10,631,0q�6,    �� TextAlignment$ Center=�6A   �� 5      $��1024px-Telegram_logo.jpeg��6   $��
16,0,738,0q�6;   '  !MaterialDesignThemes.Wpf.PopupBox  5      $��54,0,0,0q�6*   '  !MaterialDesignThemes.Wpf.PackIcon  5      �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$
 Menu=�6*   $��38��67   $��51��6C   $��	731,0,0,0q�6N   5      � 5      -   5        $��Contacts��5      $��
0,38,439,0q�6#    � ColumnDefinitions 5      �� 5      $
��241* �6'   �� 5      $
��112* �6'   .+�5      A� $��10,10,111.455,248q�6   ��5      �� 5       �� ImageSource$ 1.jpeg��6%    j� Stretch$ UniformToFill=�6:   5       A� 5!      $��0,107,111.455,140q�6   ��5"      �� 5#      $ 2.jpg��6%   $ UniformToFill=�69   5%      A� 5&      $��0,215,111.455,32q�6   ��5'      �� 5(      $ 3.jpg��6%   5*      �� 5+      $
��Left=�6   $��
181,48,0,0q�67   $
��Wrap=�6K   $��	John Snow��6_   $	��Top=�6p   $��32��6�   $	��162��6�   $��2��6�   �� 5,      $
��Left=�6   $��181,138,0,0q�67   $
��Wrap=�6L   $��
Aria Stark��6`   $	��Top=�6r   $��32��6�   $	��162��6�   $��2��6�   �� 5-      $
��Left=�6   $��181,253,0,0q�67   $
��Wrap=�6L   $��Sansa Stark��6`   $	��Top=�6s   $��32��6�   $	��162��6�   $��2��6�   �� 5.      $ ��Чат с актерами��6   $��1��61   $��122,30,-110,0q�6A   $	��Top=�6X   $	��100��6p   $
��Left=�6|   5/      �� 50      -   5        	 ��Name$	 button1��50      $��Темная тема��6&   $
��Left=�6<   $��	564,0,0,0q�6W   $	��Top=�6j   $	��159��6�   6�   �� 51      -   5        $��Светлая тема��51      $
��Left=�6,   $��
564,18,0,0q�6G   $	��Top=�6[   $	��159��6s   6   �� 52      -   5        $��NameTextBox��52      $
��Left=�6)   $��23��6D   $��627,105,0,0q�6P   
 �� TextWrapping$

 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��141��6�   �� 53      $$��Введите ваше имя��6   $
��Left=�6/   $��
627,59,0,0q�6J   $	��Top=�6^   $	��141��6v   �� 54      -   5        $��EntryButton��54      $��Вход��6(   $
��Left=�67   $��627,152,0,0q�6R   $	��Top=�6g   $��77��6   6�   �� 55      -	   5        $��
ExitButton��55      $��
Выход��6'   $
��Left=�67   $��709,152,0,0q�6R   $	��Top=�6g   $��59��6   6�   �� 56      -
   5        $��MessegeTextBox��56      $
��Left=�6,   $��23��6G   $��627,246,0,0q�6S   $

 Wrap=�6h   $�� ��6|   $	��Top=�6�   $	��141��6�   �� 57      $+��%Отправить сообщение��6   $
��Left=�62   $��627,198,0,0q�6M   $	��Top=�6b   $	��141��6z   �� 58      -   5        $��
SendButton��58      $,��&Нажмите для отправки��6<   $
��Left=�6[   $��627,291,0,0q�6v   $	��Top=�6�   $	��141��6�   �� 59      -   5        $��ChatTextBox��59      $
��Left=�6)   $	��214��6D   $��288,117,0,0q�6Q   $

 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��259��6�   5:      5;      5<      