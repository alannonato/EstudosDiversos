const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const routes = require('./routes')

const app = express();

mongoose.connect('mongodb+srv://omnistack:omnistack@cluster0-kdxee.mongodb.net/week10?retryWrites=true&w=majority',{
    useNewUrlParser: true,
    useUnifiedTopology: true,
});//String de conexão aqui

app.use(cors({ origin: 'http://localhost:3000'}));
app.use(express.json());
app.use(routes);

//Medotos HTTP: GET, POST, PUT, DELELE

//Tipos de parametros:
//Query Params: req.query (Filtros, ordenação, paginação ...)
//Route Params: request.params (identificar um recurso na alteração ou remoção)
//Body: request.boyd (Dados para a criação ou alteração de um registro)

// Mongo (Não-relacional)



app.listen(3333);