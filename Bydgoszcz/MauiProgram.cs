using Bydgoszcz.Services;
using CommunityToolkit.Maui;
using Microsoft.AspNetCore.Components;
using Microsoft.Maui.LifecycleEvents;



//using Bydgoszcz.Interfaces;
//using Bydgoszcz.Services;
using Radzen;
using ZXing.Net.Maui.Controls;

namespace Bydgoszcz
{
	public static class MauiProgram
	{
		public static MauiApp CreateMauiApp()
		{
			var builder = MauiApp.CreateBuilder();
			builder
				.UseMauiApp<App>()
				.UseMauiCommunityToolkit()
				.UseBarcodeReader()

				.ConfigureFonts(fonts =>
				{
					fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				});

			builder.Services.AddMauiBlazorWebView();
			builder.Services.AddRadzenComponents();

#if DEBUG
			builder.Services.AddBlazorWebViewDeveloperTools();
			//builder.Logging.AddDebug();
#endif
			builder.Services.AddSingleton<IPinkService, PinkService>();
			builder.Services.AddScoped<INavigateToPage, NavigateToPage>();
			builder.Services.AddScoped<IDatabaseProvider, DatabaseProvider>();
            builder.Services.AddSingleton<IGunService, GunService>();

#if WINDOWS
            builder.ConfigureLifecycleEvents(events =>
			{
				events.AddWindows(wndLifeCycleBuilder =>
				{
					wndLifeCycleBuilder.OnWindowCreated(window =>
					{
						IntPtr hWnd = WinRT.Interop.WindowNative.GetWindowHandle(window);
						Microsoft.UI.WindowId myWndId = Microsoft.UI.Win32Interop.GetWindowIdFromWindow(hWnd);
						var _appWindow = Microsoft.UI.Windowing.AppWindow.GetFromWindowId(myWndId);
						_appWindow.SetPresenter(Microsoft.UI.Windowing.AppWindowPresenterKind.FullScreen);
						                
					});
				});
			});
#endif
			return builder.Build();
		}
	}
}
