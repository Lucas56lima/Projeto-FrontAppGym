using FrontAppGym.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FrontAppGym.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PaymentPage : ContentPage
	{
		public PaymentPage ()
		{
			InitializeComponent ();
			//this.BindingContext = new RegisterViewModel();
		}
	}
}