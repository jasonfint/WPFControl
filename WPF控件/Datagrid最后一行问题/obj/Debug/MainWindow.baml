   M S B A M L   `   `   `  ����U  QDatagrid最后一行问题, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Datagrid最后一行问题Datagrid最后一行问题  5   	   +    %Datagrid最后一行问题.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:Datagrid最后一行问题     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	      &   System.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value �� Color=  7System.Windows.Controls.Primitives.DataGridColumnHeader)  #System.Windows.Controls.DataGridRow �� Triggers P� Property P� Value*  $System.Windows.Controls.DataGridCell	 �� 
TargetType
 �� TextAlignment��%,  '        '  y    '      '  s    �� 5
   
   "  6   .�5      ��  � �� �#c2d0f26+   �� 5       �@ CanUserResizeColumns .  65   �� 5       � �� �#d6c79b6,   �� 5        �@ HorizontalGridLinesBrush 5      �� 5      $ #4d525d��6&   5      �� 5       �@ VerticalGridLinesBrush 5      �� 5      $ #4d525d��6&   5      5      �� 5   
   "  6   .�5!      ��  � �� �#4d525d6,   �� 5"       � ��$ 1q�60   �� 5#       � ��$
 Left=�64   �� 5$       � ��$ Center=�6;   �� 5%       � ��$	 140��6&   �� 5&       � ��$ 40��6'   �� 5'       � ��$ 14(�6)   �� 5(       � �� �#c2d0f26+   �� 5)       � �� �#3333336+   �� 5+       � ��$
 Bold"�6-   5,      �� 5/   
   "  6   .�53      ��  � ��$ 40��6'   �� 54       � ��$ 40��6*   �� 55       � ��$ 40��6*   �� 57       � �� �#3333336+    58      P� 5:       �@ AlternationIndex$ 0��66   . �5;      ��  � �� �#c2d0f263   5<      P� 5>       �@ AlternationIndex$ 1��66   . �5?      ��  � �� �#c2d0f263   5@      P� 5B       �@J�IsMouseOver . . �5C      ��  � �� �#A3AFCC63   5E      P� 5F       �@ 
IsSelected . . �5G      ��  � ��
 �   �63   5H      5J      �� 5L   
   "  6   .�5M      ��  � �� 5N      �� 5O      "	  6&   .R�5P      �� $
 Center=�6$   $��Center=�6;   �� 5Q      5R      5S      5U       5V      P� 5W       �@ 
IsSelected . . �5X      ��  � ��
 �����63   �� 5Y       � ��$ 0q�68   �� 5Z       � ��
 �����63   �� 5[       � ��$ 38��6/   5\      5^      5_      .��5`      (� $
��Left=�6   .��5a   
     -   5          Name$ dg��5a      5b      5c      