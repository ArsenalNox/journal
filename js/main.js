//
var state = 'hidden';

if('serviceWorker' in navigator){
  window.addEventListener('load', () => {
    navigator.serviceWorker
    .register('sw_cached_pages.js')

    .then(reg => console.log('Service Worker: Registered'))
    .catch(err => console.log(`Service Worker: Error: ${err}`))
  })
}

function ShowMenu(){
  switch (state) {
    case 'hidden':
      document.getElementById('mn1').style.display = 'grid';
      state = 'shown';
      break;
    case 'shown':
      document.getElementById('mn1').style.display = 'none';
      state = 'hidden';
      break;

  }
}

function displayOfflineMessage(){
  let offlineMessageDiv = document.createElement('div');
  offlineMessageDiv.className = 'offlineDiv';
  let p = document.createElement('p');
  p.className = 'offline-message-paragraph';
  p.innerTest = ' Вы находитесь в режиме оффлайн, для корректной работы приложения требуется интернет-соединение';
  offlineMessageDiv.append(p);
  document.body.append(p)
}

window.addEventListener("load", () => {
  function handleNetworkChange(event) {
    if (navigator.onLine) {
      document.body.classList.remove("offline");
    } else {
      document.body.classList.add("offline");
      displayOfflineMessage();
    }
  }
  window.addEventListener("online", handleNetworkChange);
  window.addEventListener("offline", handleNetworkChange);
});
