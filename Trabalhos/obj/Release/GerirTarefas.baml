   M S B A M L   `   `   `  ���� F  BWorkPlanner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Trabalhos	Trabalhos      Trabalhos.GerirTarefas   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:Trabalhos       N� Title$  GerirTarefas�� N� 
FontFamily$ Segoe UI Light)� N� FontSize$ 16(�.��� ���	#FF1B1B1B � ColumnDefinitions �� $
��221* ��� $
��Auto ��� $
��318* � � RowDefinitions �� $��7* ��� $��4* �.+��� -    ��Name$ Lbl_Trabalho��$��0��$��0��$��Tarefas do trabalho ��$��Stretch=�$	��Top=�$��Center=�$��Center=�$��
10,10,10,0q�$��31���� -    ��Name$ Lst_Tarefas��$��0��$��0��$��2��$��Stretch=�$��Stretch=�$��10,49,10,10q�$��Stretch=����� .R��  �� $��* ��� $
��Auto �.+��� $��0��$��Center=�$��Right=�$��5q����� *	Servico+�� $��1��$��1��$
��Left=�����  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=�	 �� 
StartPoint$	 0.5,0&�.��� 
 � Color$
 	#00000000�� � Offset$ 0Q�� $
 	#00000000��$ 1Q�� $
 White��$	 0.4Q�� $
 White��$	 0.6Q��� $��1��$��Center=�$
��Left=����� *Tempo+�� $��0��$��1��$��2��$��1��$
��Left=����� $ 0.5,1&�$ RelativeToBoundingBox=�$	 0.5,0&�.��� $
 	#00000000��$ 0Q�� $
 	#00000000��$ 1Q�� $
 White��$	 0.4Q�� $
 White��$	 0.6Q��� $��0��$��1��$��Código tarefa:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��9,10,9,0q�$��31���� -   $ Lbl_CodigoTarefa��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��
11,10,10,0q�$��31���� $��0��$��1��$��	Serviço:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��9,46,9,0q�$��31���� -   $ Lbl_Servico��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��
10,46,11,0q�$��31��$��16(��� -    ��Name$ 
Cb_Servico��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��
10,49,11,0q�$��30��$��16(�$y�Hidden=��� $��0��$��1��$��2��$��1��$	��Top=�$��0,92,0,0q����� $ 0,0.5&�$	 1,0.5&�.��� $
 	#00000000��$ 0Q�� $
 	#00000000��$ 1Q�� $
 White��$	 0.4Q�� $
 White��$	 0.6Q��� $��0��$��1��$��Tempo:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��9,97,9,0q�$��32���� -   $ 	Lst_Tempo��$��2��$	��110��$��10,97,115,0q�$	��Top=� J� SnapsToDevicePixels . ���	#FFEEEEEE$��Disabled=�{�.  ���� .R���  �� Orientation$ 
Horizontal=�����  �� 
TargetType" ��.���  �� Property � �� �� Value$ 	30 0 30 0q����� .R��  �� $��* � �� $��* ��� $��* ��� $��* �.+��� $��0��$��0��$��Center=�$��Center=����� *
DataInicio+�� $��0��$��0��$��1��$��Bottom=����� $ 0,0.5&�$	 1,0.5&�.��� $
 	#00000000��$ 0Q�� $
 	#00000000��$ 1Q�� $
 White��$	 0.4Q�� $
 White��$	 0.6Q��� $��1��$��0��$��Center=�$��Center=����� *	DataFim+�� $��1��$��0��$��1��$��Bottom=����� $ 0,0.5&�$	 1,0.5&�.��� $
 	#00000000��$ 0Q�� $
 	#00000000��$ 1Q�� $
 White��$	 0.4Q�� $
 White��$	 0.6Q��� $��2��$��0��$��Center=�$��Center=����� *TempoDecorrido+���� " �� �� Triggers P�  P� Property � |� P� Value . . ���  � �� �	#FF494949��  � ��$ 0q���  � �� �	#FF494949P�  � |� .  . ���  � �� �	#FF494949��  � ��$ 0q���  � �� �	#FF494949.���  � �� ��  �� 
TargetType" ��.R���  ��Name$ Bd��#��z��#��z��#��z�� �� Padding$ 1q� . ._��� |�.  #��z����.  .���� # z  �� Triggers P�  � {� .  . ���  �� 
TargetName$ Bd�� � �� �	#FF1B1B1B�� -    ��Name$ Btn_AdicionarTempo��$��0��$��2��$��	Adicionar��$��	0,97,10,0q�$��Right=�$	��100��$��52��$	��Top=�{�.  $y�Hidden=��� -   $ Btn_EditarTempo��$��0��$��2��$��	Atualizar��$��	0,97,10,0q�$��Right=�$	��100��$��52��$	��Top=�$y�Hidden=��� -	   $ Btn_ApagarTempo��$��0��$��2��$��Apagar��$��
0,156,10,0q�$��Right=�$	��100��$��52��$	��Top=�{�.  $y�Hidden=��� $��0��$��1��$��Data/hora de inicio:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��10,208,10,0q�$��30���� -
   $ Lbl_DataInicio��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��10,208,10,0q�$��30��(  "System.Windows.Controls.DatePicker  -     Name$ Dp_DataInicio��$��0��$��2��$
��Left=�$	��Top=�$��
10,214,0,0q�$��16(�$��20��$	��230��   IsTodayHighlighted .  $��0q�$��0q���. $y�Hidden=�   SelectedDate �� *
DataNull+��Z�  � 	Resources )   #Trabalhos.StringToDateTimeConverter   StringToDateTimeConverter:  4System.Windows.Controls.Primitives.DatePickerTextBox ��Name  �� 
IsReadOnly! � OverridesDefaultStyle" �� Path# �� RelativeSource$ �� AncestorType% �� 	Converter��%�   &	        '       7     �� "  .���  � �� �� .R��� $ PART_TextBox�����	#FF494949���	#FFEEEEEE$��0q�  .  ! .  ���� $" SelectedDate�# �� "$  8%   �� -   $ Btn_LimparDataInicio��$��0��$��2��$��Data anterior��$
��Left=�$	��Top=�$��Center=�$��Center=�$��245,212,0,0q�$	��110��$y�Hidden=��� -   $ Btn_AtualDataInicio��$��0��$��2��$��
Data atual��$
��Left=�$	��Top=�$��Center=�$��Center=�$��360,212,0,0q�$	��110��$y�Hidden=��� $��0��$��1��$��Data/hora de fim:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��10,244,10,0q�$��30���� -   $ Lbl_DataFim��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��10,244,10,0q�$��30��  -   $ 
Dp_DataFim��$��0��$��2��$
��Left=�$	��Top=�$��
10,250,0,0q�$��16(�$��20��$	��230�� .  $��0q�$��0q���. $y�Hidden=� �� *
DataNull+��Z�  ��%�   &	        '       7     �� "  .���  � �� �� .R��� $ PART_TextBox�����	#FF494949���	#FFEEEEEE$��0q�  .  ! .  ���� $" SelectedDate�# �� "$  8%   �� -   $ Btn_LimparDataFim��$��0��$��2��$��Data anterior��$
��Left=�$	��Top=�$��Center=�$��Center=�$��245,248,0,0q�$	��110��$y�Hidden=��� -   $ Btn_AtualDataFim��$��0��$��2��$��
Data atual��$
��Left=�$	��Top=�$��Center=�$��Center=�$��360,248,0,0q�$	��110��$y�Hidden=��� $��0��$��1��$��2��$��1��$	��Top=�$��	0,277,0,0q����� $ 0,0.5&�$	 1,0.5&�.��� $
 	#00000000��$ 0Q�� $
 	#00000000��$ 1Q�� $
 White��$	 0.4Q�� $
 White��$	 0.6Q��� $��0��$��1��$��	Desconto:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��
5,277,10,0q�$��30���� -   & ��Name$& Sld_Desconto��$��0��$��2��$��Stretch=�$	��Top=�$��10,287,93,0q�' � Maximum$	' 100Q�{�.  ( �� IsSnapToTickEnabled( . ) �� TickFrequency$
) 0.01Q�$y�Hidden=��� -   $ Tb_Desconto��$��0��$��2��$	��Top=�$��Center=�$��	0,287,6,0q�$��20��$��16(�$��Right=�$��87��$��0q�$��Center=�  . ���� *Value+* �� StringFormat$* {0:#00.00%}���� $��0��$��1��$��Preço:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��
5,313,10,0q�$��30���� -   $ 	Lbl_Preco��$��0��$��2��$
��Left=�$	��Top=�$
��Left=�$��Center=�$��
10,318,0,0q�$��19��$��16(�$	��149��$�� ��$��0q��� $��0��$��1��$��2��$��1��$��Bottom=����� $ 0,0.5&�$	 1,0.5&�.��� $
 	#00000000��$ 0Q�� $
 	#00000000��$ 1Q�� $
 White��$	 0.4Q�� $
 White��$	 0.6Q��� -   $ Btn_AdicionarTarefa��$��1��$��1��$��Adicionar Nova Tarefa��$��	10,10,0,0q�$	��250��$
��Left=�$��73��$	��Top=�$��2���� -   $ Btn_AtualizarTarefa��$��1��$��1��$��Editar Tarefa Selecionada��$��
10,89,0,89q�$	��250��$��73��$
��Left=�{�.  $��2���� -   $ Btn_ApagarTarefa��$��1��$��1��$��Apagar Tarefa Selecionada��$��	10,0,0,10q�$	��250��$��73��$
��Left=�{�.  $��Bottom=�$��2���� -   $ Btn_CancelarTarefa��$��1��$��1��$��Cancelar��$��	10,0,0,10q�$	��250��$
��Left=�$��73��$��Bottom=�$��2��$y�Hidden=��� -   $ Btn_GuardarTarefa��$��1��$��1��$��Guardar Tarefa��$��	10,10,0,0q�$��73��$	��250��$	��Top=�$
��Left=�{�.  $��2��$y�Hidden=��� -   $ Btn_GuardarAlteracoes��$��1��$��1��$��Guardar Alterações��$��9,10,0,0q�$��73��$	��251��$	��Top=�$
��Left=�{�. $��2��$y�Hidden=��� -   $ 
Btn_Voltar��$��1��$��2��$��Voltar��$��	0,0,10,10q�$��Right=�$	��100��$��50��$��Bottom=��� $��1��$��2��$��103,10,10,65q�$��Stretch=�$��Stretch=�$
��Auto=�.���� -   + ��Name$+ 	Lbl_Erros��  	TextBlock#��[ $��WrapWithOverflow=�, �� TextAlignment$
, Left=��� -   $ BloquearFundo��$��3��$��2�����	#99000000$y�Hidden=�� -   - �Name$- Grd_ValidarApagar��$��0��$��0��$��2��$��3��$	��500��$
��1083�����	#FFAAAAAA$y�Hidden=�.+��� #��[ $	��Top=�$��Stretch=�$��
10,10,10,0q�$��WrapWithOverflow=�$, Center=��� $��40(�$6�0Tem a certeza que pretende eliminar esta tarefa?���� �� $��30(�$C�=As horas pertencentes a esta tarefa tambem serão eliminadas!���� #��[ $��Center=�$��Stretch=�$��10,10,10,10q�$��WrapWithOverflow=�$, Center=��� $��Segoe UI Semibold)�$��70(�$"�Esta ação é irreversivel!���� -   $ Btn_ConfirmarApagar��$��Apagar Serviço��$��
200,0,0,50q�$��Center=�$	��175��$��75��$��Bottom=��� -    $ Btn_CancelarApagar��$��Cancelar��$��-200,0,0,50q�$��Center=�$	��175��$��75��$��Bottom=�