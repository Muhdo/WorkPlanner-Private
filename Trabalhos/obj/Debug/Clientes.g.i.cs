﻿#pragma checksum "..\..\Clientes.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5F753A6ECE35E5FCB98BF08CB3A3BC9C58B1BB4E"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using Trabalhos;


namespace Trabalhos {
    
    
    /// <summary>
    /// Clientes
    /// </summary>
    public partial class Clientes : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 11 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid Grid_AdicionarCliente;
        
        #line default
        #line hidden
        
        
        #line 13 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label Lbl_CodigoCliente;
        
        #line default
        #line hidden
        
        
        #line 15 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tb_Nome;
        
        #line default
        #line hidden
        
        
        #line 17 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker Dp_Nascimento;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Slider Sl_Sexo;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tb_Morada;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tb_CodigoPostal;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tb_Localidade;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tb_Email;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tb_Telemovel;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\Clientes.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Tb_Telefone;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Trabalhos;component/clientes.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Clientes.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.Grid_AdicionarCliente = ((System.Windows.Controls.Grid)(target));
            return;
            case 2:
            this.Lbl_CodigoCliente = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.Tb_Nome = ((System.Windows.Controls.TextBox)(target));
            
            #line 15 "..\..\Clientes.xaml"
            this.Tb_Nome.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.Tb_Nome_TextChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.Dp_Nascimento = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 5:
            this.Sl_Sexo = ((System.Windows.Controls.Slider)(target));
            return;
            case 6:
            this.Tb_Morada = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.Tb_CodigoPostal = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.Tb_Localidade = ((System.Windows.Controls.TextBox)(target));
            return;
            case 9:
            this.Tb_Email = ((System.Windows.Controls.TextBox)(target));
            return;
            case 10:
            this.Tb_Telemovel = ((System.Windows.Controls.TextBox)(target));
            return;
            case 11:
            this.Tb_Telefone = ((System.Windows.Controls.TextBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

