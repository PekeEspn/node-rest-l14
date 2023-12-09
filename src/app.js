const express = require('express');
const app = express();
const puerto = 80;

const UsuariosController =require('./controllers/UsuariosController');
app.use(express.json());
app.get('/usuarios', UsuariosController.indexGet);
app.get('/usuarios/:id([0-9]+)', UsuariosController.itemGet);
app.post('/usuarios', UsuariosController.indexPost);

const ServiciosController =require('./controllers/ServiciosController');
app.use(express.json());
app.get('/servicios', ServiciosController.indexGet);
app.get('/servicios/:id([0-9]+)', ServiciosController.itemGet);
app.post('/servicios', ServiciosController.indexPost);

const VehiculosController =require('./controllers/VehiculosController');
app.use(express.json());
app.get('/vehiculos', VehiculosController.indexGet);
app.get('/vehiculos/:id([0-9]+)', VehiculosController.itemGet);
app.post('/vehiculos', VehiculosController.indexPost);

const VentasController =require('./controllers/VentasController');
app.use(express.json());
app.get('/ventas', VentasController.indexGet);
app.get('/ventas/:id([0-9]+)', VentasController.itemGet);
app.post('/ventas', VentasController.indexPost);

app.get('/', function(req,res){
    res.statusCode=200;
    res.setHeader('Content-Type', 'text/plain');
    res.send('Hola mundo!');

});

app.listen(puerto, function(){
    console.log('servidor iniciado');
});

