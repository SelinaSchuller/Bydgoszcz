using Bydgoszcz.Services;
using CommunityToolkit.Maui;
using Microsoft.AspNetCore.Components;


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
			return builder.Build();
		}
	}
}
