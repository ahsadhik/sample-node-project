
var http = require('http');
var express = require('express');

var app = express();

app.set('port', process.env.PORT || 80); // GİRİŞ PORTU AYARLANDI
app.set('views', __dirname + '/app/server/views'); // VIEW KLASÖRÜ TANITILDI
app.set('view engine', 'ejs'); // VIEW ENGINE AYARLANDI
app.use(express.static(__dirname + '/app/public')); // KULLANICILAR TARAFINDAN ERİŞİLEBİLEN KLASÖR TANIMLANDI

// ✅ ADD THIS LINE
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

require('./app/routes')(app); // ROUTE DOSYASI ÇAĞIRILDI

/*

HTTP SERVER OLUŞTURULDU

*/
http.createServer(app).listen(app.get('port'), function(){
	console.log('Sistem ' + app.get('port') + ' Portu Üzerinde Çalışıyor.');
});
