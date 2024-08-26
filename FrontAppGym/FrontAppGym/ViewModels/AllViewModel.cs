using System.ComponentModel;
using Xamarin.Forms;

namespace FrontAppGym.ViewModels
{
    class AllViewModel : BaseViewModel
    {
        private string _passwordVisbilityIcon;
        private bool _isPassword;

        public AllViewModel()
        {
            PasswordVisbilityIcon = "icon_visibilityoff.png";
            _isPassword = true;
        }
        public string PasswordVisbilityIcon
        {
            get => _passwordVisbilityIcon;
            set
            {
                if (_passwordVisbilityIcon != value)
                {
                    _passwordVisbilityIcon = value;
                    OnPropertyChanged(nameof(PasswordVisbilityIcon));
                }
            }
        }

        public bool IsPassword
        {
            get => _isPassword;
            set
            {
                if (_isPassword != value)
                {
                    _isPassword = value;
                    OnPropertyChanged(nameof(IsPassword));
                }
            }
        }
        

        public Command TogglePasswordVisibilityCommand => new Command(() =>
        {
            IsPassword = !IsPassword;
            PasswordVisbilityIcon = IsPassword ? "icon_visibilityoff.png" : "icon_visibilityon.png";
        });          
        
    }   

}
