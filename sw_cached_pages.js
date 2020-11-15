const cacheName = 'v2';
const cacheAssets = [
  'index.php',
  'css/main.css',
  'js/index.js',
  'js/main.js'
];

// Вызов ивента установки
self.addEventListener('install', e => {
  e.waitUntil(
    caches
    .open(cacheName)
    .then(cache => {
      cache.addAll(cacheAssets);
    })
    .then(() => self.skipWaiting())
  );

});

//Активация
self.addEventListener('activate', e => {
  //удалить ненужный кэш
  e.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
          cacheNames.map(cache => {
            if(cache !== cacheName){
              return caches.delete(cache);
            }
          })
      )
    })
  );
});

self.addEventListener('fetch', e => {
  e.respondWith(
    fetch(e.request)
    .then(res => {
      //Копия ответа
      if(!(e.request.method == 'POST')){
        const resClone = res.clone();
        caches
        .open(cacheName)
        .then(cache => {
          // Добавить ответ к кэшу
          cache.put(e.request, resClone)
        })
      }

      return res;
    }).catch(err => caches.match(e.request).then(res => res))
  )
})
