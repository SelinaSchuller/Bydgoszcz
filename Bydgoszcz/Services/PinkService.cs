using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bydgoszcz.Services
{
    public interface IPinkService
    {
        bool IsPink { get; }
        event EventHandler PinkChanged;
        void SetPink(bool value);
    }

    public class PinkService : IPinkService
    {
        private bool _isPink;

        public bool IsPink => _isPink;

        public event EventHandler PinkChanged;

        public void SetPink(bool value)
        {
            _isPink = value;
            // Raise the PinkChanged event when the value changes
            PinkChanged?.Invoke(this, EventArgs.Empty);
        }
    }

}
