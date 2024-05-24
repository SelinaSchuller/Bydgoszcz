let dotCount = 0;

function startLoadingAnimation() {
    const loadingTextElement = document.getElementById('loading-text');
    setInterval(() => {
        dotCount = (dotCount + 1) % 4;
        loadingTextElement.textContent = 'Loading' + '.'.repeat(dotCount);
    }, 1000);
}
