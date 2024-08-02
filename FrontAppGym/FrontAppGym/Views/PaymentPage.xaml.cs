using System;
using System.Linq;
using FrontAppGym.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace FrontAppGym.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PaymentPage : ContentPage
	{
        private bool _isUpdating = false;

        public PaymentPage ()
		{
			InitializeComponent ();
			//this.BindingContext = new RegisterViewModel();
		}

        private void OnCardFrameTapped(object sender, EventArgs e)
        {
           GridCard.IsVisible = !GridCard.IsVisible;
           FrameThrMouth.IsVisible = !FrameThrMouth.IsVisible;
           FrameYear.IsVisible = !FrameYear.IsVisible;
        }

        private void OnCardNumberTextChanged(object sender, TextChangedEventArgs e)
        {
            string text = e.NewTextValue;
            CardNumberLabel.Text = string.IsNullOrEmpty(FormatCardNumber(text)) ? CardNumberLabel.Text : FormatCardNumber(text);
        }

        private void OnCardHolderTextChanged(object sender, TextChangedEventArgs e)
        {
            string text = e.NewTextValue.ToUpper();
            CardHolderLabel.Text = string.IsNullOrEmpty(text) ? "Nome" : text;
        }

        private void OnExpirationDateTextChanged(object sender, TextChangedEventArgs e)
        {
            // Verifica se já está atualizando para evitar loops
            if (_isUpdating)
                return;

            // Definir o flag de atualização para verdadeiro
            _isUpdating = true;

            string text = e.NewTextValue;

            // Remove quaisquer caracteres não numéricos
            text = new string(text.Where(char.IsDigit).ToArray());

            // Adiciona o separador somente se o comprimento for maior que 2
            if (text.Length > 2)
            {
                text = text.Insert(2, "/");
            }

            // Atualiza o texto somente se houver uma mudança real
            if (ExpirationDateEntry.Text != text)
            {
                ExpirationDateEntry.Text = text;
                ExpirationDateEntry.CursorPosition = text.Length;
            }

            // Atualiza o rótulo com o texto formatado
            ExpirationDateLabel.Text = string.IsNullOrEmpty(text) ? "MM/YY" : text;

            // Definir o flag de atualização para falso após a atualização
            _isUpdating = false;
        }

        private string FormatCardNumber(string cardNumber)
        {
            // Remove non-numeric characters
            cardNumber = new string(cardNumber.Where(char.IsDigit).ToArray());

            // Ensure the cardNumber has enough characters
            if (cardNumber.Length >= 16)
            {
                return $"{cardNumber.Substring(0, 4)} {cardNumber.Substring(4, 4)} {cardNumber.Substring(8, 4)} {cardNumber.Substring(12, 4)}";
            }
            else if (cardNumber.Length >= 12)
            {
                return $"{cardNumber.Substring(0, 4)} {cardNumber.Substring(4, 4)} {cardNumber.Substring(8)}";
            }
            else if (cardNumber.Length >= 8)
            {
                return $"{cardNumber.Substring(0, 4)} {cardNumber.Substring(4)}";
            }
            else
            {
                return cardNumber;
            }
        }

        //private void CreateCardGrid(StackLayout stackLayout)
        //    {
        //        if (_cardGrid == null)
        //        {
        //            _cardGrid = new Grid
        //            {
        //                Padding = 10,
        //                Children =
        //                    {
        //                        new Frame
        //                        {
        //                            BackgroundColor = Color.LightGray,
        //                            CornerRadius = 10,
        //                            HasShadow = true,
        //                            HeightRequest = 70,
        //                            WidthRequest = 200,
        //                            HorizontalOptions = LayoutOptions.FillAndExpand,
        //                            VerticalOptions = LayoutOptions.Start,
        //                            Content = new Grid
        //                            {
        //                                Padding = 10,
        //                                RowDefinitions =
        //                                {
        //                                    new RowDefinition{Height = GridLength.Star},
        //                                    new RowDefinition{Height = GridLength.Auto}
        //                                },
        //                                Children =
        //                                {
        //                                    new Label
        //                                    {
        //                                        Text = "**** **** **** ****",
        //                                        FontSize = 18,
        //                                        VerticalOptions = LayoutOptions.Center,
        //                                        HorizontalOptions = LayoutOptions.Center,
        //                                        TextColor = Color.Black
        //                                    }
        //                                }
        //                            }
        //                        }
        //                     }
        //            };
        //            stackLayout.Children.Add(_cardGrid);
        //        }
        //        else
        //        {
        //            _cardGrid.IsVisible = !_cardGrid.IsVisible;
        //        }
        //    }
        
    }
}