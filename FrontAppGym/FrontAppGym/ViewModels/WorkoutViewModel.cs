using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using Xamarin.Forms;

namespace FrontAppGym.ViewModels
{
    public class WorkoutViewModel : INotifyPropertyChanged
    {          

        private int _currentIndex;
        public ObservableCollection<Session> Sessions { get; set; }
        public ObservableCollection<Level> Levels { get; set; }

        public int CurrentIndex
        {
            get => _currentIndex;
            set
            {
                if (_currentIndex != value)
                {
                    _currentIndex = value;
                    OnPropertyChanged();
                }
            }
        }

        public ICommand PreviousCommand { get; }
        public ICommand NextCommand { get; }

        public WorkoutViewModel()
        {
            Sessions = new ObservableCollection<Session>
            {
                new Session { Name = "Emagrecimento" },
                new Session { Name = "Hipertrofia" },
                new Session { Name = "Performance" }
            };
            Levels = new ObservableCollection<Level>
            {
                new Level {LevelName = "Iniciante",LevelDuration = "0 - 3 Meses"},
                new Level {LevelName = "Intermediário",LevelDuration = "4 - 6 Meses"},
                new Level {LevelName = "Avançado",LevelDuration = "Mais de 7 Meses"}
            };
            PreviousCommand = new Command(OnPrevious);
            NextCommand = new Command(OnNext);
        }

        private void OnPrevious()
        {
            if (CurrentIndex > 0)
            {
                CurrentIndex--;
            }
        }

        private void OnNext()
        {
            if (CurrentIndex < Sessions.Count - 1)
            {
                CurrentIndex++;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    public class Session
    {
        public string Name { get; set; }
    }

    public class Level
    {
        public string LevelName { get; set; }       
        public string LevelDuration { get; set; }
    }
}
