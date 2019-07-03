using System;
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
using System.Net.Sockets;
using System.Net;
using System.Threading;

namespace TelegramStyleHW
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private UdpClient client;
        private IPEndPoint ipEndPoint;
        string userName;
        private int LOCALPORT = 8001; // порт для приема сообщений
        private int REMOTEPORT = 8001; // порт для отправки сообщений
        private IPAddress groupAddress;
        const int TTL = 20;
        private bool isConnect;
        private string HOST = "235.5.5.1";
        private SynchronizationContext _context;

        public MainWindow()
        {
            InitializeComponent();
            _context = SynchronizationContext.Current;
            isConnect = false;
            EntryButton.IsEnabled = true; // кнопка входа
            ExitButton.IsEnabled = false; // кнопка выхода
            SendButton.IsEnabled = false; // кнопка отправки
            ChatTextBox.IsReadOnly = true; // поле для сообщений
            groupAddress = IPAddress.Parse(HOST);
            ipEndPoint = new IPEndPoint(groupAddress, REMOTEPORT);
            client = new UdpClient();
        }
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Resources = new ResourceDictionary() { Source = new Uri("pack://application:,,,/DarkStyle.xaml") };
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Resources = new ResourceDictionary() { Source = new Uri("pack://application:,,,/LightStyle.xaml") };
        }
        // обработчик нажатия кнопки sendButton
        private void Send_Button(object sender, RoutedEventArgs e)
        {
            try
            {
                string message = $"{NameTextBox.Text} - {MessegeTextBox.Text}";
                byte[] data = Encoding.UTF8.GetBytes(message);
                client.Send(data, data.Length, ipEndPoint);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
        }
        // обработчик нажатия кнопки loginButton
        private void loginButton_Click(object sender, RoutedEventArgs e)
        {
            userName = NameTextBox.Text;
            NameTextBox.IsReadOnly = true;
            try
            {
                client = new UdpClient(LOCALPORT);
                // присоединяемся к групповой рассылке
                client.JoinMulticastGroup(groupAddress, TTL);

                // запускаем задачу на прием сообщений
                Task receiveTask = new Task(ReceiveMessages);
                receiveTask.Start();

                // отправляем первое сообщение о входе нового пользователя
                string message = userName + " вошел в чат";
                byte[] data = Encoding.UTF8.GetBytes(message);
                client.Send(data, data.Length, ipEndPoint);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            EntryButton.IsEnabled = false;
            ExitButton.IsEnabled = true;
            SendButton.IsEnabled = true;
        }
        private void ReceiveMessages()
        {
            isConnect = true;
            try
            {
                while (isConnect)
                {
                    IPEndPoint ipEndPoint = null;
                    byte[] data = client.Receive(ref ipEndPoint);
                    string message = Encoding.UTF8.GetString(data);

                    Dispatcher.BeginInvoke(new ThreadStart(() =>
                    {
                        string messageSendTime = DateTime.Now.ToShortTimeString();

                        ChatTextBox.Text = $"{messageSendTime} {message}\n{ChatTextBox.Text}\n";
                    }));
                }
            }
            catch (ObjectDisposedException)
            {
                if (!isConnect)
                    return;
            }
            catch (SocketException)
            {
                return;
            }
        }
        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            ExitChat();
        }
        private void ExitChat()
        {
            byte[] data = Encoding.UTF8.GetBytes($"{NameTextBox.Text} Покинул чат");
            client.Send(data, data.Length, ipEndPoint);
            client.DropMulticastGroup(groupAddress);
            isConnect = false;
            client.Close();
            ChatTextBox.Clear();

            SendButton.IsEnabled = true;
            ExitButton.IsEnabled = false;
            SendButton.IsEnabled = false;
        }
    }
}
