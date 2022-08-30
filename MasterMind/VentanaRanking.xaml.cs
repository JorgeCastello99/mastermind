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
    /// Lógica de interacción para VentanaRanking.xaml
    /// </summary>
    public partial class VentanaRanking : Window
    {
        public VentanaRanking()
        {
            InitializeComponent();
            StreamReader sr = new StreamReader(".\\Ranking.txt");
            
            txtB.Text = sr.ReadToEnd();
            sr.Close();
        }

        
    }
}
