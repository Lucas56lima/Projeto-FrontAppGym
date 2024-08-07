using FrontAppGym.ViewModels;
using Xamarin.Forms;

namespace FrontAppGym.Views
{
    public partial class AboutPage : ContentPage
    {
        public AboutPage()
        {
            InitializeComponent();
            BindingContext = new AboutViewModel();
        }
    }
}