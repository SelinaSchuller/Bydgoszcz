﻿using Microsoft.AspNetCore.Components;

namespace Bydgoszcz.Services
{
	public interface INavigateToPage
	{
		void OnNavigatedTo(string destination);
	}

	public class NavigateToPage : INavigateToPage
	{
		private readonly NavigationManager _navigationManager;

		// Inject NavigationManager using constructor injection
		public NavigateToPage(NavigationManager navigationManager)
		{
			_navigationManager = navigationManager;
		}

		public void OnNavigatedTo(string destination)
		{
			_navigationManager.NavigateTo($"/{destination}");
		}
	}
}
