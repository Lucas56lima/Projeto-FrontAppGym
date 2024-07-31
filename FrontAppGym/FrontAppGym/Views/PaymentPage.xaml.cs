using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FrontAppGym.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FrontAppGym.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PaymentPage : TabbedPage
	{
		public PaymentPage ()
		{
			InitializeComponent ();
			this.BindingContext = new RegisterViewModel();
		}
	}
}