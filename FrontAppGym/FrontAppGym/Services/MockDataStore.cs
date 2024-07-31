using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FrontAppGym.Models;

namespace FrontAppGym.Services
{
    public class MockDataStore : IDataStore<Item>
    {
        readonly List<Item> items;

        public MockDataStore()
        {
            items = new List<Item>()
            {
                new Item { Id = Guid.NewGuid().ToString(), Text = "Primeiro Treino", Description="Aqui ficará o primeiro treino." },
                new Item { Id = Guid.NewGuid().ToString(), Text = "Segundo Treino", Description="Aqui ficará o segundo treino." },
                new Item { Id = Guid.NewGuid().ToString(), Text = "Terceiro Treino", Description="Aqui ficará o terceiro treino." },
                new Item { Id = Guid.NewGuid().ToString(), Text = "Quarto Treino", Description="Aqui ficará o quarto treino." },
                new Item { Id = Guid.NewGuid().ToString(), Text = "Quinto Treino", Description="Aqui ficará o quinto treino." },
                new Item { Id = Guid.NewGuid().ToString(), Text = "Sexto Treino", Description="Aqui ficará o sexto treino." }
            };
        }

        public async Task<bool> AddItemAsync(Item item)
        {
            items.Add(item);

            return await Task.FromResult(true);
        }

        public async Task<bool> UpdateItemAsync(Item item)
        {
            var oldItem = items.Where((Item arg) => arg.Id == item.Id).FirstOrDefault();
            items.Remove(oldItem);
            items.Add(item);

            return await Task.FromResult(true);
        }

        public async Task<bool> DeleteItemAsync(string id)
        {
            var oldItem = items.Where((Item arg) => arg.Id == id).FirstOrDefault();
            items.Remove(oldItem);

            return await Task.FromResult(true);
        }

        public async Task<Item> GetItemAsync(string id)
        {
            return await Task.FromResult(items.FirstOrDefault(s => s.Id == id));
        }

        public async Task<IEnumerable<Item>> GetItemsAsync(bool forceRefresh = false)
        {
            return await Task.FromResult(items);
        }
    }
}