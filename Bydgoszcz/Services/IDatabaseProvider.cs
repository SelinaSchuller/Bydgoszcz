namespace Bydgoszcz.Services
{
	public interface IDatabaseProvider
	{
		public Task SaveBulletsAsync(int i);
		public Task<int> GetBulletsAsync();
		public void DeleteBullets();

		Task<bool> GetGunAsync();
		Task SaveGunAsync(bool hasGun);
		void DeleteGun();
		
	}
}