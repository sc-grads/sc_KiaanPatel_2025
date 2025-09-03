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
using WpfApp.Data;

namespace WPFDemo
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Person person = new Person
        {
            Name = "Kiaan",
            Age = 30
        };

        public List<Person> people = new List<Person>
        {
            new Person{Name = "Jannik", Age = 30},
            new Person{Name = "Rhea", Age = 26},
            new Person{Name ="Jake", Age= 27}
        };

        public MainWindow()
        {
            InitializeComponent();

            //this.DataContext = person;

            ListBoxPeople.ItemsSource = people;

            /*
            ListBoxNames.ItemsSource = new List<string>()
            {
                "Jannick",
                "Rhea",
                "Callum"
            };*/
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string personData = person.Name + " is " + person.Age + " years old.";
            MessageBox.Show(personData);
        }
    }

}