using CommunityToolkit.Maui;
using DevExpress.Blazor;
using DevExpress.Entity.Model.Metadata;
using DevExpress.Pdf.Native.BouncyCastle.Security;
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
			builder.Services.AddDevExpressBlazor(configure => configure.BootstrapVersion = BootstrapVersion.v5);

			return builder.Build();
		}
	}
}
