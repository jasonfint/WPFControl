   M S B A M L   `   `   `  ����K  GWPF_CustomWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:WPF_CustomWindow.ControlsWPF_CustomWindow.Controls  5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089*    $WPF_CustomWindow.Controls.UserWindow  �� 
TargetType'  !System.Windows.Shell.WindowChrome �� Property �� Value   CornerRadius   GlassFrameThickness �� 
TargetType �Name � RowDefinitions    TitleBarBackground	 � ColumnDefinitions
 � Icon   IsHitTestVisibleInChrome � Title    TitleBarForeground �� Orientation ��Name   TitlebarButtonStyleKey#  System.Windows.SystemCommands   MinimizeWindowCommand �� Source �� Stretch �� RelativeSource �� AncestorType   MaximizeWindowCommand   RestoreWindowCommand  TitlebarCloseBtnStyleKey �� 	IsDefault   CloseWindowCommand �� Padding ��Name J� Opacity   ResizeGripDirection �� Triggers ]� 
Conditions �� Property  �� Value! �� 
TargetName�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      4controls'clr-namespace:WPF_CustomWindow.Controls  5      %z  '         �� 5      "    6   .�5   
   ��  �@ WindowChrome 5        5      $ 10��6   $ 	0,5,0,0.1q�62   5
      �� 5   
    � ��$ 1q�6,   �� 5   
    � ��$	 100��6%   �� 5   
    � ��$	 200��6&   �� 5   
    � �� �	#FF8080806(   �� 5   
    � ��
 �   �6'   �� 5   
    � ��
 �����6'   �� 5   
    �@  TitleBarForeground
 �����6/   �� 5   
    �@  TitleBarBackground �	#FF0071BC6/   �� 5   
    �@�
ResizeMode$ CanResizeWithGrip=�6'   �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� .u�5      �� #��z��6!   #��z��5   !   #��z��5   !   ._�5      � $ 
LayoutRoot��6#    5   "   �� 5   &   $��50 �64   �� 5   &   $��* �64   .+�5    "   � $��0��6'   #��z 64   	 5!   &   �� 5"   *   $
��auto �6;   �� 5#   *   $
��auto �6;   �� 5$   *   $��* �6;   �� 5%   *   $
��auto �6;   .+�5'   &   �� $��0��6,   #��z
 6<   $��Center=�6\    . 6w   �� 5(   &   $��1��60   $��5,0,0,0q�6@   #��z 6Q   $��Center=�6p   $��16(�6�   #��z 6�   $��CharacterEllipsis=�6�    . 6�   �� 5)   &   $��3��61   $ 
Horizontal=�6A    . .+�5*   *   �� $ MiniBtn��61   #���   6B   $��34��6s   $��Center=�6�   $��0,5,0,0q�6�   ��6~   �� # Z .��5+   .   F� $
 Fill=�6�   $	��1.5��6�   $��16��6�   $��Center=�6�   $��Center=�6�   �����    @KL S    4���@4���@@KL ����    Ӑ��     ��4���@ ��@KL S ��昇��@������ ������ �@KL ��� �4���@��� 昇��@@KL 	��63   �� *
Foreground+ �� $ ButtonL�6�   5,   +   �� 5-   *   $ MaxBtn��61   #���   6A   $��34��6r   ��6}   �� # Z .��5.   .   F� $
 Fill=�6�   $��13��6�   $��16��6�   $��Center=�6�   $��Center=�6�   Y����A�!  @��� �A�!  @���Ѣ�����Ѣ����� �        �bx�    �bx�bx��    bx�	��63   �� *
Foreground+ �� $ ButtonL�6�   5/   +   �� 50   *   $ 
RestoreBtn��61   #���   6E   $��34��6v   $y�	Collapsed=�6�   ��6�   �� # Z .��51   .   F� $
 Fill=�6�   $��13��6�   $��16��6�   $��Center=�6�   $��Center=�6�   �������lS@NPo���lS@���Z�����Z��NPo�    8��2r8��2r ���     ���+��     �
��    �
���F��TvW�F��TvWz��ѭ�z��Q��qb���@Q4Dqb���@�4D�	� �+�� �	� 	��63   �� *
Foreground+ �� $ ButtonL�6�   52   +   �� 53   *   $ CloseBtn��61   #���  6C   $��34��6v    .  ��6�   �� # Z .��54   .   F� $
 Fill=�6�   $��13��6�   $��13��6�   $��Center=�6�   $��Center=�6�   ��������  @    ��X S@    ;Xs yK���=�?ՌV�1!@T�Ytn�?�;���׋Q�<mT�Ytn�?S��(x���=߿uV�yK���=߿�!�T�Ytn�?SR������/V@H���8��T@�!�S 1!@ї�c7����!��<m�R����R��qV��!��!��qV�R����H���<m�!��9����c�ՌV�1!@�!���8��T@H����4V@H��L�g�wn�?�!��(x���=߿qV�(x���=߿��L�g�wn�?�<m��׋:��L�g�wn�?ՌV�1!@yK���=߿�8��T@yK���=߿��4V@L�g�wn�?T�Ytn�?������@<�U  >�?��]�]�@���  @	��63   �� *
Foreground+ �� $ ButtonL�6�   55   +   56   '   57   #   �� 58   "   $��1��6)   $ 0q�66   ._�59   &   �� $��Content��67   5:   #   �� 5=   "   $ 
ResizeGrip��6:   $��1��6-   $��5��6N   $��5��6X   
������ $	 0.3Q�6|   $y�	Collapsed=�5>   -   $��Right=�6D   $��Bottom=�6`   $ BottomRight=�6{   5?      5@      5A       5B      ]� 5C       5D      �� 5E   "    �@�WindowState$  Normal=�6C   �� 5F   "    �@�
ResizeMode$  	CanResize=�6B   5H      ]� 5J       5K      �� 5L   "    �@�WindowState$  Normal=�6C   �� 5M   "    �@�
ResizeMode$  CanMinimize=�6B   ./�5O      �� $! MiniBtn��6%    � y�$ Visible=�6P   �� 5P      $! MaxBtn��6%    � y�$ 	Collapsed=�6O   5Q      ]� 5S       5T      �� 5U   "    �@�WindowState$  Normal=�6C   �� 5V   "    �@�
ResizeMode$  NoResize=�6B   ./�5X      �� $! MiniBtn��6%    � y�$ 	Collapsed=�6P   �� 5Y      $! MaxBtn��6%    � y�$ 	Collapsed=�6O   5Z      ]� 5\       5]      �� 5^   "    �@�WindowState$  Normal=�6C   �� 5_   "    �@�
ResizeMode$  CanResizeWithGrip=�6B   ./�5a      �� $! 
ResizeGrip��6%    � y�$ Visible=�6S   5b      ]� 5d       5e      �� 5f   "    �@�WindowState$  	Maximized=�6C   �� 5g   "    �@�
ResizeMode$  	CanResize=�6B   ./�5i      �� $! MiniBtn��6%    � y�$ Visible=�6P   �� 5j      $! MaxBtn��6%    � y�$ 	Collapsed=�6O   �� 5k      $! 
RestoreBtn��6%    � y�$ Visible=�6S   �� 5l      $! 
LayoutRoot��6%    � ��$ 7q�6O   5m      ]� 5o       5p      �� 5q   "    �@�WindowState$  	Maximized=�6C   �� 5r   "    �@�
ResizeMode$  CanResizeWithGrip=�6B   ./�5t      �� $! MaxBtn��6%    � y�$ 	Collapsed=�6O   �� 5u      $! 
RestoreBtn��6%    � y�$ Visible=�6S   �� 5v      $! 
ResizeGrip��6%    � y�$ Visible=�6S   �� 5w      $! 
LayoutRoot��6%    � ��$ 7q�6O   5x      5z      5|      5}      5      