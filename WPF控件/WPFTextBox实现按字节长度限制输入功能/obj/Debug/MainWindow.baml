   M S B A M L   `   `   `  ����l  hWPFTextBox实现按字节长度限制输入功能, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullu?clr-namespace:WPFTextBox实现按字节长度限制输入功能1WPFTextBox实现按字节长度限制输入功能  5   	   B    <WPFTextBox实现按字节长度限制输入功能.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Qlocal?clr-namespace:WPFTextBox实现按字节长度限制输入功能     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 	Resources 5	         	linkStyle �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value��%�   &	        �� 5
   
   " ��6"    5      P� 5       �@J�IsMouseOver . . �5      ��  � ��$ 	Underline{�68   5      .�5      ��  �@�Cursor$
 Hand��6'   �� 5       � ��
 ��  �6+   5      5      .��5!      �� .+�5"   
   �� -   5         ��Name$ tb��5"      O   IWPFTextBox实现按字节长度限制输入功能.MaxByteAttachedProperty	   MaxByteLength$	 20��6   �� 5#   
   $	 20��6   
   EncodeModel$
 Unicode=�6C   �� 5$   
   $��http://www.baidu.com��6   #��[  60   5%      5&      