   M S B A M L   `   `   `  ���� F  BWorkPlanner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Trabalhos	Trabalhos      Trabalhos.GerirTrabalhos   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:Trabalhos     -     N� Title$  GerirTrabalhos�� N� 
FontFamily$ Segoe UI Light)� N� FontSize$ 16(�.��� ���	#FF1B1B1B � ColumnDefinitions �� $
��221* ��� $
��Auto ��� $
��318* � � RowDefinitions �� $��7* ��� $��4* �.+��� $��0��$��0��$��Trabalhos atuais��$��Stretch=�$	��Top=�$��Center=�$��Center=�$��
10,10,10,0q�$��31���� -    ��Name$ Lst_Trabalhos��$��0��$��0��$��2��$��Stretch=�$��Stretch=�$��10,49,10,10q�$��Stretch=����� .R��  �� $��* ��� $
��Auto �.+��� $��0��$��Center=�$��Right=�$��5q����� *NomeTrabalho+�� $��1��$��1��$
��Left=�����  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&�.��� 	 � Color$	 	#00000000��
 � Offset$
 0Q�� $	 	#00000000��$
 1Q�� $	 White��$	
 0.4Q�� $	 White��$	
 0.6Q��� $��1��$��Center=�$
��Left=����� *NomeCliente+�� $��0��$��1��$��2��$��1��$
��Left=����� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $	 	#00000000��$
 0Q�� $	 	#00000000��$
 1Q�� $	 White��$	
 0.4Q�� $	 White��$	
 0.6Q��� $��0��$��1��$��Código trabalho:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��9,10,9,0q�$��31���� -    ��Name$ Lbl_CodigoTrabalho��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��
11,10,10,0q�$��31���� $��0��$��1��$��Cliente:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��9,46,9,0q�$��31���� -   $ Lbl_Cliente��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��
10,46,10,0q�$��31��$��16(��� -    ��Name$ 
Cb_Cliente��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��
10,46,10,0q�$��31��$��16(�$y�Hidden=��� $��0��$��1��$��	Trabalho:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��9,82,9,0q�$��31���� -    ��Name$ Tb_Trabalho��$��0��$��2��$	��Top=�$
��Left=�$��Center=�$��
10,87,10,0q�$��24��$��16(� �� TextWrapping$ WrapWithOverflow=� �� 	MaxLength$ 50�� �� 
IsReadOnly . �� $��0��$��1��$��Descrição:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��	9,118,9,0q�$��31���� -   $ Tb_Descricao��$��0��$��2��$	��Top=�$
��Left=�$��10,118,10,0q�$��67��$��16(�$ WrapWithOverflow=�$	 512�� . �� $��0��$��1��$��Tarefas:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��	9,190,9,0q�$��31���� -   $ Lst_Tarefas��$��2��$	��110��$��10,190,109,0q�$	��Top=� J� SnapsToDevicePixels . ���	#FFEEEEEE$��Disabled=�{�.  ���� .R���  �� Orientation$ 
Horizontal=�����  �� 
TargetType" ��.���  �� Property � �� �� Value$ 	30 0 30 0q����� .R��  �� $��* � �� $��* ��� $��* ��� $��* �.+��� $��0��$��0��$��Center=�$��Center=����� *Tarefa+�� $��0��$��0��$��1��$��Bottom=����� $ 0,0.5&�$ 1,0.5&�.��� $	 	#00000000��$
 0Q�� $	 	#00000000��$
 1Q�� $	 White��$	
 0.4Q�� $	 White��$	
 0.6Q��� $��1��$��0��$��Center=�$��Center=����� *Tempo+�� $��1��$��0��$��1��$��Bottom=����� $ 0,0.5&�$ 1,0.5&�.��� $	 	#00000000��$
 0Q�� $	 	#00000000��$
 1Q�� $	 White��$	
 0.4Q�� $	 White��$	
 0.6Q��� $��2��$��0��$��Center=�$��Center=����� *Preco+���� " �� �� Triggers P�  P� Property � |� P� Value . . ���  � �� �	#FF494949��  � ��$ 0q���  � �� �	#FF494949P�  � |� .  . ���  � �� �	#FF494949��  � ��$ 0q���  � �� �	#FF494949.���  � �� ��  �� 
TargetType" ��.R���  ��Name$ Bd��#��z��#��z��#��z�� �� Padding$ 1q� . ._��� |�.  #��z����.  .���� # z  �� Triggers P�  � {� .  . ���  �� 
TargetName$ Bd�� � �� �	#FF1B1B1B�� -	    ��Name$ Btn_EditarTarefas��$��2��$��Gerir Tarefas��$��
0,190,10,0q�$��Right=�$��94��$	��110��$	��Top=�$y�Hidden=�{�.  �� $��0��$��1��$��Valor total:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��	9,305,9,0q�$��31���� -
   $ 	Lbl_Preco��$��0��$��2��$��Stretch=�$	��Top=�$
��Left=�$��Center=�$��10,305,534,0q�$��31���� $��0��$��1��$��Valor pago:��$��Stretch=�$	��Top=�$��Right=�$��Center=�$��	9,341,9,0q�$��31���� -   $ Tb_ValorPago��$��0��$��2��$	��Top=�$
��Left=�$��Center=�$��
10,346,0,0q�$��24��$��16(�$ WrapWithOverflow=�$ 10�� . $
��Left=�$	��123���� $��0��$��2��$��Falta receber:��$
��Left=�$	��Top=�$��Right=�$��Center=�$��138,341,0,0q�$��31��$	��105���� -   $ Lbl_Receber��$��0��$��2��$
��Left=�$	��Top=�$
��Left=�$��Center=�$��248,341,0,0q�$��31��$	��123���� $��0��$��1��$��2��$��1��$��Bottom=����� $ 0,0.5&�$ 1,0.5&�.��� $	 	#00000000��$
 0Q�� $	 	#00000000��$
 1Q�� $	 White��$	
 0.4Q�� $	 White��$	
 0.6Q��� -   $ Btn_AdicionarTrabalho��$��1��$��1��$��Adicionar Novo Trabalho��$��	10,10,0,0q�$	��250��$
��Left=�$��73��$	��Top=�$��2���� -   $ Btn_AtualizarTrabalho��$��1��$��1��$!��Editar Trabalho Selecionado��$��
10,80,0,81q�$	��250��$��73��$
��Left=�{�.  $��2���� -   $ Btn_ApagarTrabalho��$��1��$��1��$!��Apagar Trabalho Selecionado��$��	10,0,0,10q�$	��250��$��73��$
��Left=�{�.  $��Bottom=�$��2���� -   $ Btn_CancelarTrabalho��$��1��$��1��$��Cancelar��$��	10,0,0,10q�$	��250��$
��Left=�$��73��$��Bottom=�$��2��$y�Hidden=��� -   $ Btn_GuardarTrabalho��$��1��$��1��$��Guardar Trabalho��$��	10,10,0,0q�$��73��$	��250��$	��Top=�$
��Left=�{�.  $��2��$y�Hidden=��� -   $ Btn_GuardarAlteracoes��$��1��$��1��$��Guardar Alterações��$��	10,10,0,0q�$��73��$	��250��$	��Top=�$
��Left=�{�. $��2��$y�Hidden=��� -   $ 
Btn_Voltar��$��1��$��2��$��Voltar��$��	0,0,10,10q�$��Right=�$	��100��$��50��$��Bottom=��� $��1��$��2��$��123,10,10,65q�$��Stretch=�$��Stretch=�$
��Auto=�.���� -    ��Name$ 	Lbl_Erros��   	TextBlock#��[  $��WrapWithOverflow=�  �� TextAlignment$
  Left=��� -   $ BloquearFundo��$��3��$��2�����	#99000000$y�Hidden=�� -   ! �Name$! Grd_ValidarApagar��$��0��$��0��$��2��$��3��$	��500��$
��1083�����	#FFAAAAAA$y�Hidden=�.+��� #��[  $	��Top=�$��Stretch=�$��
10,10,10,0q�$��WrapWithOverflow=�$  Center=��� $��40(�$8�2Tem a certeza que pretende eliminar este trabalho?���� �� $��30(�$E�?Todas as tarefas e tempos associados também serão eliminados!���� #��[  $��Center=�$��Stretch=�$��10,10,10,10q�$��WrapWithOverflow=�$  Center=��� $��Segoe UI Semibold)�$��70(�$"�Esta ação é irreversivel!���� -   $ Btn_ConfirmarApagar��$��Apagar Trabalho��$��
200,0,0,50q�$��Center=�$	��175��$��75��$��Bottom=��� -   $ Btn_CancelarApagar��$��Cancelar��$��-200,0,0,50q�$��Center=�$	��175��$��75��$��Bottom=�