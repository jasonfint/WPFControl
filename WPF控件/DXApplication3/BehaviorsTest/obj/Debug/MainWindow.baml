   M S B A M L   `   `   `  ����  BehaviorsTest    BehaviorsTest.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5   	   <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  5   	   _ [Microsoft.Xaml.Behaviors, Version=1.0.1.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a;	Behaviors+http://schemas.microsoft.com/xaml/behaviors  5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)   .��5      �  � RowDefinitions 5	   
   �� 5
      $��* �6   �� 5      $��7* �6   .+�5   
   � $��0��6   .+�5      (� $	��Top=�6   $
��Left=�6.   $��0,0,0,10q�6I   .��5      �� $��InvokeCommandAction��6   $��40(�67   $��Stretch=�6E   
�������6a   5      5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   .+�5      � $��0��6   $��0,0,10,0q�6#    5      �� 5      $��2* �6$   �� 5      $��* �6$   .+�5       � -   5         �Name$
 Grid��5       $��Stretch=�6%   $��Stretch=�6A   
������$��0��6u   �� 5!      -   5         ��Name$ button��5!      $��Click Me��6)   $��Stretch=�6<   $��1��6Z   $��	0,10,0,10q�6g   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5"      +  %Microsoft.Xaml.Behaviors.EventTrigger  5#         	EventName$ Click��61   /  )Microsoft.Xaml.Behaviors.EventTriggerBase   SourceObject 6C   ��  �� ElementName$ button��*  $Microsoft.Xaml.Behaviors.TriggerBase	   Actions.	 5$      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  
   Command
 6<   �� *ColorCommand+   CommandParameter 6]   �� *Grid.Background+5%      5'      5(      �� 5*      $��1��6   $
��Auto=�6+   .��5+      �� .+�5,      �� $
��Wrap=�6    $��	10,0,10,0q�64   $��20(�6G   
�������$����InvokeCommandAction causes an ICommand to be invoked whenever a particular event occurs. Clicking the button will cause the rectangle to change color.��5-   �   5.      �� 5/      2  ,System.Windows.Markup.XmlAttributeProperties  XmlSpace preserve6k   $
��Wrap=�6    $��	10,20,0,0q�64   $��15(�6G   
��������<Behaviors:Interaction.Triggers>
    <Behaviors:EventTrigger EventName="Click" SourceObject="{Binding ElementName=button}">
        <Behaviors:InvokeCommandAction Command="{Binding ColorCommand}" CommandParameter="{Binding Grid.Background}" />
    </Behaviors:EventTrigger>
</Behaviors:Interaction.Triggers>
                    54      55      56      57      58      59      