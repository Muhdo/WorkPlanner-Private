﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;
using LiveCharts;
using LiveCharts.Defaults;
using LiveCharts.Configurations;
using LiveCharts.Wpf;

namespace Trabalhos
{
    /// <summary>
    /// Interaction logic for PaginaPrincipal.xaml
    /// </summary>
    public partial class PaginaPrincipal : Page
    {
        SqlCommand queryContarClientes = new SqlCommand("SELECT COUNT(Key_Cliente) AS 'Contagem' FROM Cliente");
        SqlCommand queryContarTrabalhos = new SqlCommand("SELECT COUNT(Key_Trabalho) AS 'Contagem' FROM Trabalho");
        SqlCommand queryContarServicos = new SqlCommand("SELECT COUNT(Key_Servico) AS 'Contagem' FROM Servico");

        SqlCommand queryTodosTrabalhos = new SqlCommand("SELECT Key_Trabalho, Pago FROM Trabalho");
        SqlCommand queryTodosServicos = new SqlCommand("SELECT Key_Servico, Preco FROM Servico");
        SqlCommand queryTodasTarefas = new SqlCommand("SELECT Key_Tarefa, Key_Trabalho, Key_Servico, Desconto FROM Tarefa");
        SqlCommand queryTodosTempos = new SqlCommand("SELECT Key_Tempo, Key_Tarefa, DataInicio, DataFim FROM Tempo");

        SqlDataReader Reader;

        public PaginaPrincipal()
        {
            InitializeComponent();

            DataBase.conexao = new SqlConnection(DataBase.stringConexao);

            CarregarCircular();
            CarregarLinhas();
        }

        private void Chart_OnDataClick(object sender, ChartPoint chartpoint)
        {
            var chart = (PieChart)chartpoint.ChartView;

            foreach (PieSeries series in chart.Series)
                series.PushOut = 1;

            var selectedSeries = (PieSeries)chartpoint.SeriesView;
            selectedSeries.PushOut = 8;
        }

        private void Btn_GerirClientes_Click(object sender, RoutedEventArgs e)
        {
            ((MainWindow)Application.Current.MainWindow).Frm_Principal.Content = new GerirClientes();
        }

        private void Btn_Definicoes_Click(object sender, RoutedEventArgs e)
        {
            ((MainWindow)Application.Current.MainWindow).Frm_Principal.Content = new Definicoes();
        }

        private void Btn_GerirServicos_Click(object sender, RoutedEventArgs e)
        {
            ((MainWindow)Application.Current.MainWindow).Frm_Principal.Content = new GerirServicos();
        }

        private void Btn_GerirTrabalhos_Click(object sender, RoutedEventArgs e)
        {
            ((MainWindow)Application.Current.MainWindow).Frm_Principal.Content = new GerirTrabalhos();
        }

        void CarregarCircular()
        {
            Func<ChartPoint, string> PieLabel = chartPoint => string.Format("{0}, ({1:P})", chartPoint.Y, chartPoint.Participation);

            double contagemClientes = 0;
            double contagemTrabalhos = 0;
            double contagemServicos = 0;

            try
            {
                DataBase.conexao.Open();
                queryContarClientes.Connection = DataBase.conexao;

                Reader = queryContarClientes.ExecuteReader();

                Reader.Read();
                contagemClientes = Convert.ToDouble(Reader["Contagem"].ToString());

                if (contagemClientes > 0)
                {
                    Chrt_Pie.Series.Add(new PieSeries { Title = "Clientes", StrokeThickness = 1, DataLabels = true, LabelPoint = PieLabel, Values = new ChartValues<double> { contagemClientes } });
                }

                Reader.Close();

                queryContarTrabalhos.Connection = DataBase.conexao;
                Reader = queryContarTrabalhos.ExecuteReader();

                Reader.Read();
                contagemTrabalhos = Convert.ToDouble(Reader["Contagem"].ToString());

                if (contagemTrabalhos > 0)
                {
                    Chrt_Pie.Series.Add(new PieSeries { Title = "Trabalhos", StrokeThickness = 1, DataLabels = true, LabelPoint = PieLabel, Values = new ChartValues<double> { contagemTrabalhos } });
                }

                Reader.Close();

                queryContarServicos.Connection = DataBase.conexao;
                Reader = queryContarServicos.ExecuteReader();

                Reader.Read();
                contagemServicos = Convert.ToDouble(Reader["Contagem"].ToString());

                if (contagemServicos > 0)
                {
                    Chrt_Pie.Series.Add(new PieSeries { Title = "Serviços", StrokeThickness = 1, DataLabels = true, LabelPoint = PieLabel, Values = new ChartValues<double> { contagemServicos } });
                }

                Reader.Close();
                queryContarClientes.Connection.Close();
                queryContarTrabalhos.Connection.Close();
                queryContarServicos.Connection.Close();
                DataBase.conexao.Close();
            }
            catch (Exception)
            {
            }

            if (contagemClientes == 0 && contagemTrabalhos == 0 && contagemServicos== 0)
            {
                Chrt_Pie.Visibility = Visibility.Hidden;
                Lbl_Pie.Visibility = Visibility.Visible;
            }
        }

        void CarregarLinhas()
        {
            List<Tuple<string, decimal>> trabalhos = new List<Tuple<string, decimal>>();
            List<Tuple<string, decimal>> servicos = new List<Tuple<string, decimal>>();
            List<Tuple<string, string, string, decimal>> tarefas = new List<Tuple<string, string, string, decimal>>();
            List<Tuple<string, string, DateTime?, DateTime?>> tempos = new List<Tuple<string, string, DateTime?, DateTime?>>();

            Func<ChartPoint, string> LineLabel = chartPoint => string.Format("Ganhos: {0}", string.Format("{0:###0.00}€", chartPoint.Y));

            var dayConfig = Mappers.Xy<DateModel>()
                .X(dateModel => dateModel.DateTime.Ticks / TimeSpan.FromDays(1).Ticks)
                .Y(dateModel => dateModel.Value);

            DataBase.conexao.Open();
            queryTodosTrabalhos.Connection = DataBase.conexao;
            Reader = queryTodosTrabalhos.ExecuteReader();


            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    trabalhos.Add(new Tuple<string, decimal>(Convert.ToString(Reader["Key_Trabalho"].ToString()), Convert.ToDecimal(Reader["Pago"].ToString())));
                }

                Reader.Close();

                queryTodosServicos.Connection = DataBase.conexao;
                Reader = queryTodosServicos.ExecuteReader();

                if (Reader.HasRows)
                {
                    while (Reader.Read())
                    {
                        servicos.Add(new Tuple<string, decimal>(Convert.ToString(Reader["Key_Servico"].ToString()), Convert.ToDecimal(Reader["Preco"].ToString())));
                    }

                    Reader.Close();

                    queryTodasTarefas.Connection = DataBase.conexao;
                    Reader = queryTodasTarefas.ExecuteReader();

                    if (Reader.HasRows)
                    {
                        while (Reader.Read())
                        {
                            tarefas.Add(new Tuple<string, string, string, decimal>(Convert.ToString(Reader["Key_Tarefa"].ToString()), Convert.ToString(Reader["Key_Trabalho"].ToString()), Convert.ToString(Reader["Key_Servico"].ToString()), Convert.ToDecimal(Reader["Desconto"].ToString())));
                        }

                        Reader.Close();

                        queryTodosTempos.Connection = DataBase.conexao;
                        Reader = queryTodosTempos.ExecuteReader();

                        if (Reader.HasRows)
                        {
                            while (Reader.Read())
                            {
                                tempos.Add(new Tuple<string, string, DateTime?, DateTime?>(Convert.ToString(Reader["Key_Tempo"].ToString()), Convert.ToString(Reader["Key_Tarefa"].ToString()), Convert.ToDateTime(Reader["DataInicio"] as DateTime?), Convert.ToDateTime(Reader["DataFim"] as DateTime?)));
                            }

                            Reader.Close();

                            queryTodosTrabalhos.Connection.Close();
                            queryTodosServicos.Connection.Close();
                            queryTodasTarefas.Connection.Close();
                            queryTodosTempos.Connection.Close();

                            List<Tuple<decimal, DateTime>> listagem = new List<Tuple<decimal, DateTime>>();

                            foreach (Tuple<string, string, DateTime?, DateTime?> item in tempos)
                            {
                                decimal valor = 0;

                                if (item.Item4 == Convert.ToDateTime("01/01/0001 00:00:00") || item.Item4 == Convert.ToDateTime(null))
                                {
                                    valor = 0;
                                    Console.WriteLine("Zero");
                                }
                                else
                                {
                                    decimal precoH = servicos.Find(lst => lst.Item1 == tarefas.Find(lstt => lstt.Item1 == item.Item2).Item3).Item2;
                                    TimeSpan tempo = Convert.ToDateTime(item.Item4) - Convert.ToDateTime(item.Item3);
                                    valor = (precoH * Convert.ToDecimal(tempo.TotalHours)) * (1 - tarefas.Find(lst => lst.Item1 == item.Item2).Item4);

                                    int index = listagem.FindIndex(lst => lst.Item2.ToShortDateString() == Convert.ToDateTime(item.Item3).ToShortDateString());

                                    if (index > -1)
                                    {
                                        Console.WriteLine("Editou");
                                        listagem[index] = new Tuple<decimal, DateTime> (listagem[index].Item1 + valor, listagem[index].Item2);
                                    }
                                    else
                                    {
                                        Console.WriteLine("Adicionou");
                                        listagem.Add(new Tuple<decimal, DateTime>(valor, Convert.ToDateTime(item.Item3)));
                                    }
                                }
                            }

                            List<DateModel> list = new List<DateModel>();

                            listagem = listagem.OrderBy(o => o.Item2).ToList();

                            foreach (Tuple<decimal, DateTime> item in listagem)
                            {
                                list.Add(new DateModel { DateTime = item.Item2, Value = (double)item.Item1 });
                            }

                            Series = new SeriesCollection(dayConfig)
                                {
                                    new LineSeries
                                    {
                                        Values = new ChartValues<DateModel>(list.ToArray()),
                                        Title = "",
                                        DataLabels = false,
                                        LabelPoint = LineLabel,
                                        Fill = Brushes.Transparent
                                    },
                                };

                            YFormatter = value => string.Format("{0:###0.00}€", value);
                            Formatter = value => new DateTime((long)(value * TimeSpan.FromDays(1).Ticks)).ToString("d");

                            DataContext = this;
                        }
                        else
                        {
                            Chrt_Lines.Visibility = Visibility.Hidden;
                            Lbl_Lines.Visibility = Visibility.Visible;
                        }
                    }
                    else
                    {
                        Chrt_Lines.Visibility = Visibility.Hidden;
                        Lbl_Lines.Visibility = Visibility.Visible;
                    }
                }
                else
                {
                    Chrt_Lines.Visibility = Visibility.Hidden;
                    Lbl_Lines.Visibility = Visibility.Visible;
                }
            }
            else
            {
                Chrt_Lines.Visibility = Visibility.Hidden;
                Lbl_Lines.Visibility = Visibility.Visible;
            }

            DataBase.conexao.Close();
        }

        public Func<double, string> YFormatter { get; set; }
        public Func<double, string> Formatter { get; set; }
        public SeriesCollection Series { get; set; }
    }


    internal class DateModel
    {
        public System.DateTime DateTime { get; set; }
        public double Value { get; set; }
    }
}
