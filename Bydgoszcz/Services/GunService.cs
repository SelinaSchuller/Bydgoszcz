using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bydgoszcz.Services
{
    public class GunService : IGunService
    {
		private readonly IDatabaseProvider _databaseProvider;
		private bool _hasGun;

		public GunService(IDatabaseProvider databaseProvider)
		{
			_databaseProvider = databaseProvider;
			InitializeGunStatus().Wait();
		}

		public bool HasGun
		{
			get => _hasGun;
			private set
			{
				if(_hasGun != value)
				{
					_hasGun = value;
					GunStatusChanged?.Invoke(this, EventArgs.Empty);
				}
			}
		}

		public event EventHandler GunStatusChanged;

		private async Task InitializeGunStatus()
		{
			HasGun = await _databaseProvider.GetGunAsync();
		}

		public async Task CheckGunStatusAsync()
		{
			var hasGun = await _databaseProvider.GetGunAsync();
			HasGun = hasGun;
		}
	}

}
