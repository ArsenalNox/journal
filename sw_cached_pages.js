const cacheName = 'v1';
const cacheAssets = [
  'index.php',
  'css/main.css',
  'js/index.js',
  'js/main.js'
];

// Вызов ивента установки
self.addEventListener('install', e => {
  console.log('Servide Worker: Install');

  e.waitUntil(
    caches
    .open(cacheName)
    .then(cache => {
      console.log('Service Worker: Caching Files...');
      cache.addAll(cacheAssets);
    })
    .then(() => self.skipWaiting())
  );

});

//Активация
self.addEventListener('activate', e => {
  console.log('Servide Worker: Activated');
  //удалить ненужный кэш
  e.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
          cacheNames.map(cache => {
            if(cache !== cacheName){
              console.log('Service Worker: Clearing old cache...');
              return caches.delete(cache);
            }
          })
      )
    })
  );
});

self.addEventListener('fetch', e => {
  console.log('Service Worker: Fetching... ');
  e.respondWith(
    fetch(e.request)
    .then(res => {
      //Копия ответа
      const resClone = res.clone();
      caches
      .open(cacheName)
      .then(cache => {
        // Добавить ответ к кэшу
        cache.put(e.request, resClone)
      })
      return res;
    }).catch(err => caches.match(e.request).then(res => res))
  )
})
