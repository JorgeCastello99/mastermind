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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MasterMind
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    /// 


    public partial class MainWindow : Window
    {
        bool puede1, puede2, puede3, puede4, puede5, puede6, puede7, puede8, puede9, puede10, final;
        int puntos=100;
        public MainWindow()
        {
            InitializeComponent();
            rellenaBotonesJuego();
        }

        /// <summary>
        /// array de los colores que se usan en el juego
        /// </summary>
        /// <returns></returns>
        public Button[] botonesColor()
        {
            Button[] botonescolor = { btnrojo, btnazul, btnnaranja, btnamarillo, btnverde, btnnegro, btnrosa, btngris };
            return botonescolor;
        }

        /// <summary>
        /// array de las label de aciertos
        /// </summary>
        /// <returns></returns>
        public Label[] labelPuntos()
        {
            Label[] label = { lbl1, lbl2, lbl3, lbl4, lbl5, lbl6, lbl7, lbl8, lbl9, lbl10 };
            return label;
        }

        /// <summary>
        /// array de los botones del juego
        /// </summary>
        /// <returns></returns>
        public Button[] botonesJuego()
        {
            Button[] botonesNuevo = { btne1, btne2, btne3, btne4, btne5, btne6, btne7, btne8, btne9, btne10,
                    btne11, btne12, btne13, btne14, btne15, btne16, btne17, btne18, btne19, btne20,
                    btne21, btne22, btne23, btne24, btne25, btne26, btne27, btne28, btne29, btne30,
                    btne31, btne32, btne33, btne34, btne35, btne36, btne37, btne38, btne39, btne40};
            return botonesNuevo;
        }

        /// <summary>
        /// Array de botones de comprobar
        /// </summary>
        /// <returns></returns>
        public Button[] botonesComprobar()
        {
            Button[] botonesComprobar = { comp1, comp2, comp3, comp4, comp5,comp6, comp7, comp8, comp9, comp10 };
            return botonesComprobar;
        }

        /// <summary>
        /// Array de los botones que se colorean
        /// </summary>
        /// <returns></returns>
        public Button[] botonesAleatorio()
        {
            Button[] botonesTotal = {btn1,btn2,btn3,btn4};
            return botonesTotal;
        }
        /// <summary>
        /// Array de imagenes de la flecha
        /// </summary>
        /// <returns></returns>
        public Image[] imagenesFlecha()
        {
            Image[] img = { img1, img2, img3, img4, img5, img6, img7, img8, img9, img10 };
            return img;
        }

       
        public void rellenaBotonesJuego()
        {
            Random rnd = new Random();
          
            Button[] botonesColores = botonesColor();
            Label[] label = labelPuntos();
            Button[] botonesNuevo = botonesJuego();
            Button[] botonesC= botonesComprobar();
            Button[] botonesAleat = botonesAleatorio();
            Image[] img = imagenesFlecha();

            for (int i = 0; i < 4; i++)
            {
                int rColor = rnd.Next(botonesColores.Length);
                botonesAleat[i].Background = botonesColores[rColor].Background;
                botonesAleat[i].Visibility=Visibility.Hidden;
            }
            for (int i = 0; i < 10; i++)
            {
                label[i].Content = "";
            }
            for (int i = 0; i < 40; i++)
            {
                botonesNuevo[i].Background = Brushes.White;
            }
            puede1 = true; puede2 = false; puede3 = false; puede4 = false; puede5 = false; puede6 = false; puede7 = false; puede8 = false; puede9 = false; puede10 = false;

            comp1.IsEnabled = true;
            for (int i = 1; i < 10; i ++)
            {
                botonesC[i].IsEnabled = false;
                img[i].Visibility = Visibility.Hidden;
            }
            puntos = 100;
            puntuacion.Content = puntos.ToString();
            final = false;
        }

        private void FinalizarJuego()
        {
            Button[] botones = botonesAleatorio();
            for (int i = 0; i < 4; i++)
            {
                botones[i].Visibility = Visibility.Visible;
            }
            Button[] botonescomp = botonesComprobar();
            for (int i = 0; i < 10; i++)
            {
                botonescomp[i].IsEnabled = false;
            }
            Button[] botonesJu = botonesJuego();

            
            puede1 = false; puede2 = false; puede3 = false; puede4 = false; puede5 = false; puede6 = false; puede7 = false; puede8 = false; puede9 = false; puede10 = false;
        }

        public void botonComprobar(int btnmenor, int btnmayor, Label lb)
        {
            Button[] botonesNuevo = botonesJuego();
            Button[] botonesAleat = botonesAleatorio();
            int a = 0;
            int total = 0;
            for (int i = btnmenor; i <= btnmayor; i++)
            {
                if (botonesNuevo[i].Background == botonesAleat[a].Background)
                {
                    total++;
                    a++;
                }
                else
                {
                    a++;
                }
            }
            lb.Content = total.ToString();
            if (total == 4)
            {
                final = true;
                MessageBox.Show("Enhorabuena!!!", "Ganador", MessageBoxButton.OK);
               puede1= false; puede2 = false; puede3 = false; puede4 = false; puede5 = false; puede6 = false; puede7 = false; puede8 = false; puede9 = false; puede10 = false;
                FinalizarJuego();
                abrirDialog();
            }
            else
            {

                hacerPuntuacion();
            }

        }
        private void abrirDialog()
        {
                 DialogPuntos dlg = new DialogPuntos();
                // Configure the dialog box
              
            // Open the dialog box modally 
                 totalGrid.IsEnabled = false;
                dlg.ShowDialog();
                
                totalGrid.IsEnabled=true;
            
        }

                public void cambiarColorEleccion(Button a, bool puede)
                {
                    Brush color = a.Background;
                    if (puede == true)
                    {
                        if (color == Brushes.Gray)
                        {
                            a.Background = Brushes.Red;
                        }
                        if (color == Brushes.Pink)
                        {
                            a.Background = Brushes.Gray;
                        }
                        if (color == Brushes.Black)
                        {
                            a.Background = Brushes.Pink;
                        }
                        if (color == Brushes.Green)
                        {
                            a.Background = Brushes.Black;
                        }
                        if (color == Brushes.Yellow)
                        {
                            a.Background = Brushes.Green;
                        }
                        if (color == Brushes.Orange)
                        {
                            a.Background = Brushes.Yellow;
                        }
                        if (color == Brushes.Blue)
                        {
                            a.Background = Brushes.Orange;
                        }
                        if (color == Brushes.Red)
                        {
                            a.Background = Brushes.Blue;
                        }
                        if (color == Brushes.White)
                        {
                            a.Background = Brushes.Red;
                        }
                    }



                }
                
                private void hacerPuntuacion()
                {
                    puntos = puntos - 8;
                    puntuacion.Content = puntos.ToString();


                }
                private void Button_Click_1(object sender, RoutedEventArgs e)
                {
                    puntos = 0; puntuacion.Content = puntos.ToString();
                    FinalizarJuego();
                    MessageBox.Show("te has rendido, Vuelve ha intentarlo", "Perdedor", MessageBoxButton.OK);
                    rellenaBotonesJuego();
                }
                private void BtnPartidas_Click(object sender, RoutedEventArgs e)
                {
                    VentanaRanking vr = new VentanaRanking();
                   
                    // Open the dialog box modally 
                    totalGrid.IsEnabled = false;
                    vr.ShowDialog();

                    totalGrid.IsEnabled = true;

                }

        private void comp1_Click(object sender, RoutedEventArgs e)
                {
                    puede1 = false;
                    puede2 = true;
                    comp1.IsEnabled = false;
                    comp2.IsEnabled = true;
                    img2.Visibility = Visibility.Visible;
                    botonComprobar(0, 3, lbl1);
                     

                }
                private void comp2_Click(object sender, RoutedEventArgs e)
                {
                    puede2 = false;
                    puede3 = true;
                    botonComprobar(4, 7, lbl2);
                    comp2.IsEnabled = false;
                    comp3.IsEnabled = true;
                     img3.Visibility = Visibility.Visible;
                    
                }

                private void comp3_Click(object sender, RoutedEventArgs e)
                {
                    puede3 = false;
                    puede4 = true;
                    botonComprobar(8, 11, lbl3);
                    comp3.IsEnabled = false;
                    comp4.IsEnabled = true;
                     img4.Visibility = Visibility.Visible;
                }

                private void comp4_Click(object sender, RoutedEventArgs e)
                {
                    puede4 = false;
                    puede5 = true;
                    botonComprobar(12, 15, lbl4);
                    comp4.IsEnabled = false;
                    comp5.IsEnabled = true;
                    img5.Visibility = Visibility.Visible;
                }

                private void comp5_Click(object sender, RoutedEventArgs e)
                {
                    puede5 = false;
                    puede6 = true;
                    botonComprobar(16, 19, lbl5);
                    comp5.IsEnabled = false;
                    comp6.IsEnabled = true;
                    img6.Visibility = Visibility.Visible;

                }

                private void comp6_Click(object sender, RoutedEventArgs e)
                {
                    puede6 = false;
                    puede7 = true;
                    botonComprobar(20, 23, lbl6);
                    comp6.IsEnabled = false;
                    comp7.IsEnabled = true;
                    img7.Visibility = Visibility.Visible;
                }

                private void comp7_Click(object sender, RoutedEventArgs e)
                {
                    puede7 = false;
                    puede8 = true;
                    botonComprobar(24, 27, lbl7);
                    comp7.IsEnabled = false;
                    comp8.IsEnabled = true;
                     img8.Visibility = Visibility.Visible;
                }

                private void comp8_Click(object sender, RoutedEventArgs e)
                {
                    puede8 = false;
                    puede9 = true;
                    botonComprobar(28, 31, lbl8);
                    comp8.IsEnabled = false;
                    comp9.IsEnabled = true;
                    img9.Visibility = Visibility.Visible;
                }

            private void comp9_Click(object sender, RoutedEventArgs e)
            {
                        puede9 = false;
                        puede10 = true;
                        botonComprobar(32, 35, lbl9);
                comp9.IsEnabled = false;
                comp10.IsEnabled = true;
            img10.Visibility = Visibility.Visible;
            }

            private void comp10_Click(object sender, RoutedEventArgs e)
            {

                        botonComprobar(36, 39, lbl10);
            if (final == false)
            {
                puntos = 0; puntuacion.Content = puntos.ToString();

                FinalizarJuego();
                MessageBox.Show("Has perdido!!!!!, Vuelve ha intentarlo", "Perdedor", MessageBoxButton.OK);
            }
                
            }

        
           


                private void btne1_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne1, puede1);
                }

                private void btne2_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne2, puede1);
                }

                private void btne3_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne3, puede1);
                }

                private void btne4_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne4, puede1);
                }

                private void btne5_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne5, puede2);
                }

                private void btne6_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne6, puede2);
                }

                private void btne7_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne7, puede2);
                }

                private void btne8_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne8, puede2);
                }

                private void btne9_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne9, puede3);
                }

                private void btne10_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne10, puede3);
                }

                private void btne11_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne11, puede3);
                }

                private void btne12_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne12, puede3);
                }

                private void btne14_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne13, puede4);
                }

                private void btne13_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne14, puede4);
                }

                private void btne15_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne15, puede4);
                }

                private void btne16_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne16, puede4);
                }

                private void btne17_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne17, puede5);
                }

                private void btne18_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne18, puede5);
                }

                private void btne19_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne19, puede5);
                }

                private void btne20_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne20, puede5);
                }

                private void btne21_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne21, puede6);
                }

                private void btne22_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne22, puede6);
                }

                private void btne23_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne23, puede6);
                }

                private void btne24_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne24, puede6);
                }

                private void btne25_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne25, puede7);
                }

                private void btne26_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne26, puede7);
                }

                private void btne27_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne27, puede7);
                }

                private void btne28_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne28, puede7);
                }

                private void btne29_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne29, puede8);
                }

                private void btne30_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne30, puede8);
                }

                private void btne31_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne31, puede8);
                }

        

                private void btne32_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne32, puede8);
                }



                private void btne33_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne33, puede9);
                }

                private void btne34_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne34, puede9);
                }

                private void btne35_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne35, puede9);

                }

                private void btne36_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne36, puede9);
                }

                private void btne37_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne37, puede10);
                }

                private void btne38_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne38, puede10);
                }

                private void btne39_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne39, puede10);

                }

                private void btne40_Click(object sender, RoutedEventArgs e)
                {
                    cambiarColorEleccion(btne40, puede10);

                }

                private void Button_Click(object sender, RoutedEventArgs e)
                {
                    rellenaBotonesJuego();

                }
    }
}
   
