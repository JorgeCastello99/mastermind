using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Shapes;

namespace MasterMind
{
    /// <summary>
    /// Lógica de interacción para DialogPuntos.xaml
    /// </summary>
    public partial class DialogPuntos : Window
    {
        MainWindow mw;
        public DialogPuntos()
        {
            InitializeComponent();
             mw = new MainWindow();
            puntuacionDialog.Content = mw.puntuacion.Content;
        }

        private void okButton_Click(object sender, RoutedEventArgs e)
        {
            StreamWriter sw = new StreamWriter(".\\Ranking.txt",true);
            if (txtbNombre.Text=="")
            {
                MessageBox.Show("Escribe tu nombre por favor");
            }
            else
            {
                sw.WriteLine(txtbNombre.Text + ": " + mw.puntuacion.Content+"\n");
                sw.Close();
            }
            this.Close();

        }

        private void cancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
