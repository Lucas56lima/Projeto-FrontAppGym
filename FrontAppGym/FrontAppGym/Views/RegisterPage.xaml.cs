﻿using System;
using System.Linq;
using FrontAppGym.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FrontAppGym.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class RegisterPage : ContentPage
	{
        private bool _isUpdatingText = false;
        private bool _navigationEnabled = false;
        public RegisterPage ()
		{
			InitializeComponent ();
            //LoadStripeCheckout();
            this.BindingContext = new RegisterViewModel();
        }

        private void OnDateEntryTextChanged(object sender, TextChangedEventArgs e)
        {
            if (_isUpdatingText)
                return;

            var newText = e.NewTextValue;

            // Remove caracteres não numéricos
            var cleanedText = new string(newText.Where(char.IsDigit).ToArray());

            // Adiciona barras para formato dd/MM/yyyy
            if (cleanedText.Length > 2)
            {
                cleanedText = cleanedText.Insert(2, "/");
            }
            if (cleanedText.Length > 5)
            {
                cleanedText = cleanedText.Insert(5, "/");
            }

            // Atualiza o texto formatado na Entry se for diferente do texto atual
            if (entryDateBirthday.Text != cleanedText)
            {
                _isUpdatingText = true;
                entryDateBirthday.Text = cleanedText;
                entryDateBirthday.CursorPosition = cleanedText.Length; // Move o cursor para o final
                _isUpdatingText = false;
            }
        }

        private void OnFoneEntryTextChanged(object sender, TextChangedEventArgs e)
        {
            if (_isUpdatingText)
                return;

            var newText = e.NewTextValue;

            // Remove caracteres não numéricos
            var cleanedText = new string(newText.Where(char.IsDigit).ToArray());

            // Adiciona barras para formato dd/MM/yyyy
            if(cleanedText.Length > 1)
            {
                cleanedText = cleanedText.Insert(0, "(");
            }
            if (cleanedText.Length > 3)
            {
                cleanedText = cleanedText.Insert(3, ") ");
            }
            if (cleanedText.Length > 10)
            {
                cleanedText = cleanedText.Insert(10, "-");
            }

            // Atualiza o texto formatado na Entry se for diferente do texto atual
            if (entryFone.Text != cleanedText)
            {
                _isUpdatingText = true;
                entryFone.Text = cleanedText;
                entryFone.CursorPosition = cleanedText.Length; // Move o cursor para o final
                _isUpdatingText = false;
            }
        }

        private void OnChangedVisibilityPasswordOn(object obj, EventArgs e)
        {
            entryPassword.IsPassword = false;
            visibilityPassword.Source = "icon_visibilityoff.png";
            var tapGestureRecognizer = new TapGestureRecognizer();
            tapGestureRecognizer.Tapped += OnChangedVisibilityPasswordOff;
            visibilityPassword.GestureRecognizers.Clear(); // Limpar os reconhecedores de gesto existentes
            visibilityPassword.GestureRecognizers.Add(tapGestureRecognizer);
            var password = entryPassword.Text;
            if (password != null)            
                entryPassword.CursorPosition = password.Length;
        }
        private void OnChangedVisibilityPasswordOff(object obj, EventArgs e)
        {
            // Alterar a visibilidade da senha e o ícone quando o ícone está oculto
            entryPassword.IsPassword = true;
            visibilityPassword.Source = "icon_visibilityon.png";
            var tapGestureRecognizer = new TapGestureRecognizer();
            tapGestureRecognizer.Tapped += OnChangedVisibilityPasswordOn;
            visibilityPassword.GestureRecognizers.Clear(); // Limpar os reconhecedores de gesto existentes
            visibilityPassword.GestureRecognizers.Add(tapGestureRecognizer);
            var password = entryPassword.Text;
            if (password != null)
                entryPassword.CursorPosition = password.Length;
        }
        
        private void OnVerifyPassword(object obj, TextChangedEventArgs e)
        {
            string password = entryPassword.Text;
            if(password.Length < 6 || password == null)
            {
                DisplayAlert("Atenção", "Senha deve ter mais do que 6 caracteres.", "Ok");
            }
                
            string confirmPassword = entryConfirmPassword.Text;
            if (password != confirmPassword)
                labelConfirmPassword.IsVisible = true;
                labelConfirmPassword.Text = "As senhas não correspondem!";
                labelConfirmPassword.TextColor = Color.White;
        }

        //private async void LoadStripeCheckout()
        //{
        //    var stripeCheckoutUrl = "http://0.0.0.0:4242"; // Substitua pela URL real
        //    stripeWebView.Source = new UrlWebViewSource
        //    {
        //        Url = stripeCheckoutUrl
        //    };

        //}

        private void OnCardFrameTapped(object sender, EventArgs e)
        {
            CardFrame.IsVisible = true;
        }

        private void OnCardNumberTextChanged(object sender, TextChangedEventArgs e)
        {
            string text = e.NewTextValue;
            CardNumberLabel.Text = FormatCardNumber(text);
        }

        private void OnCardHolderTextChanged(object sender, TextChangedEventArgs e)
        {
            string text = e.NewTextValue.ToUpper();
            CardHolderLabel.Text = string.IsNullOrEmpty(text) ? "CARDHOLDER NAME" : text;
        }

        private void OnExpirationDateTextChanged(object sender, TextChangedEventArgs e)
        {
            string text = e.NewTextValue;
            ExpirationDateLabel.Text = string.IsNullOrEmpty(text) ? "MM/YY" : text;
        }

        private string FormatCardNumber(string cardNumber)
        {
            // Remove non-numeric characters
            cardNumber = new string(cardNumber.Where(char.IsDigit).ToArray());

            // Format as #### #### #### ####
            if (cardNumber.Length > 12)
            {
                return $"{cardNumber.Substring(0, 4)} {cardNumber.Substring(4, 4)} {cardNumber.Substring(8, 4)} {cardNumber.Substring(12, 4)}";
            }
            else if (cardNumber.Length > 8)
            {
                return $"{cardNumber.Substring(0, 4)} {cardNumber.Substring(4, 4)} {cardNumber.Substring(8)}";
            }
            else if (cardNumber.Length > 4)
            {
                return $"{cardNumber.Substring(0, 4)} {cardNumber.Substring(4)}";
            }
            else
            {
                return cardNumber;
            }
        }
    }    
}