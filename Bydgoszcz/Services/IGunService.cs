namespace Bydgoszcz.Services
{
	public interface IGunService
	{
		bool HasGun { get; }
		event EventHandler GunStatusChanged;
		Task CheckGunStatusAsync();

	}
}