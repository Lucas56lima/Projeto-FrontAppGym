using System;
using System.Collections.Generic;
using FrontAppGym.ViewModels;
using FrontAppGym.Views;
using Xamarin.Forms;

namespace FrontAppGym
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
        }

    }
}
