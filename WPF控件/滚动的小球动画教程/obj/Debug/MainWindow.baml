   M S B A M L   `   `   `  ����V  R滚动的小球动画教程, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:滚动的小球动画教程滚动的小球动画教程  5   	   ,    &滚动的小球动画教程.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:滚动的小球动画教程     5   	     � Title$  
MainWindow��5   	   $	��800��6   $	��800��6)    � 	Resources 5	       
  MyPath  BeginRollBall g� RepeatBehavior g� Duration T� PathGeometry �� TargetProperty T� Source �� 
TargetName��%�  &	        &	     7   7   B� 5
   
   $����M70.5,210.5 C175.5,143 181,136.5 244,136.5 307,136.5 319,189 331,207 343,225 347.5,298.5 347.5,298.5 L491.5,340.5 C491.5,340.5 520,391.5 551.5,325.5 583,259.5 622,359.99974 610,244.49988 598,129.00001 614.50012,179.99995 595.00012,135 575.50011,90.000054 664.90289,84.724203 664.90289,84.724203 L489.72622,50.377374 462.77596,162.37791 C462.77596,162.37791 570.57699,278.85847 462.77596,207.17812 354.97494,135.49778 347.48875,72.77748 347.48875,72.77748 L170.81485,65.310778 70.5,78.750842 45.046979,116.08435C�6&   �� 5   
   $ Forever��6+   .��5      T� $ 0:0:12D�6'   8   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6`   $ X=�6�   $
 ball��6�   5      T� 5      $ 0:0:12D�6'   8  $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6`   $ Y=�6�   $
 ball��6�   5      5      5       � Triggers 5      :� 5   
   	 :� RoutedEvent$	 FrameworkElement.Loaded��6   .[�5      �� -   5        
 ��Name$#
 BeginRollBall_BeginStoryboard��5      #��[ 6E   5      .��5      � -   5         �Name$ 
LayoutRoot��5      ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    � MappingMode$ RelativeToBoundingBox=�63    �� 
StartPoint$ 0.5,0&�6W   .��5      �  � Color$ 	#FF3594ED��6    � Offset$ 1Q�61   � 5      $ White��6   5      .+�5   
   �� -   5         ��Name$ 
CanvasMain��5      $��50,20,20,20q�6%   .+�5      &    滚动的小球动画教程.Ball  -   5          Name$
 ball��5       J� RenderTransformOrigin$ 0.5,0.5&�6*   z�5       V� 5!      .~�5"      ��  �� ScaleX$	 0.4Q�6%    �� ScaleY$	 0.4Q�62   �� 5#      �� 5$      T� 5%      5&      5(      F� 5)      ����Р�3������u
��@��
 �" %� �"��rL �"��@�C�����V���q@:i�m�����m������K �K��K �K ����U�8� `�f��߿"�w��%�(u��[$�ŒӀ��#Jb���$Δ�
8�v#���NoM"�J]꜡'��꜡'����0�� јf����	Әf����	^P"�
��f��IY��|(4��A�V�A�Vтm.
:��Ѡ�3z����\�~N�	$��310.3��6   �� Left$ 45��6(   �� Stretch$
 Fill=�69  
 �� Top$ 50��6H  $	��621��6X  5+      5,      5-      