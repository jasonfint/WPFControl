   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35X@clr-namespace:System.Windows.Data;assembly=PresentationFrameworkSystem.Windows.Data 5   	   H DLoadingScreen, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:LoadingScreenLoadingScreen 5   	      LoadingScreen.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      5   	   @d2http://schemas.microsoft.com/expression/blend/2008      5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006      5   	   Hscm8clr-namespace:System.ComponentModel;assembly=WindowsBase      5   	   Pdat@clr-namespace:System.Windows.Data;assembly=PresentationFramework      5   	   -localclr-namespace:LoadingScreen      5   	     � Title$  
MainWindow��5
   	   $	��350��6   $	��525��6)    � 	Resources 5         	Employees � XPath  cvs �� Source �� Source �� XPath �� SortDescriptions+   %System.ComponentModel.SortDescription   PropertyName   	Direction	 �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription
   PropertyName �� DataType �� Orientation��%0  &	        &	 -    7   (�� �    5"      *
Employee+)� 5   
   $ /Employees/*��6,   .��5      ��<Employees xmlns="">
                    <Employee Name="Terry Adams" Type="FTE" EmployeeNumber="1" />
                    <Employee Name="Claire O'Donnell" Type="FTE" EmployeeNumber="12345" />
                    <Employee Name="Palle Peterson" Type="FTE" EmployeeNumber="5678" />
                    <Employee Name="Amy E. Alberts" Type="CSG" EmployeeNumber="99222" />
                    <Employee Name="Stefan Hesse" Type="Vendor" EmployeeNumber="-" />
                </Employees>        5      �� 5   
    6,   �� 8   $ /Employees/*�� 5        5      $ @Name��6&   $ 
Descending=�6;   	 5        5      $
 @Type��6/   5       �� 5"   
   $ Employee��6   .R�5#      �� $ 
Horizontal=�6   .+�5$      �� $
��30,0q�69   ��6   �� $ @Name��69   �� 5%      $
��30,0q�69   ��6   �� $ @Type��69   �� 5&      $
��30,0q�6C   ��6   �� $ @EmployeeNumber��6C   5'      5(      5*      .��5,      �� .+�5-   
   �� -   5         ��Name$ lb��5-   F   ��6   �� # [ 6F   5.      50      