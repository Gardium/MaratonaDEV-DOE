// Configurando o servido r
const express = require('express')
const server = express()

//Configurar o servidor para apresentar arquivos estáticos

server.use(express.static('public'))

//Habilitar Body do form
server.use(express.urlencoded({ extended: true }))

// configurando configuração com banco de dados
const mysql = require('mysql')
const db = mysql.createConnection({

    host: 'Localhost',
    port: 3306,
    user: 'root',
    password: 'newpwd',
    database: 'doe'
})



// Configurando a template engine
const nunjunks = require('nunjucks')
nunjunks.configure('./', {
    express: server
})




// Configurar a apresentação da pagina
server.get('/', function(req, res) {
    db.query('SELECT * FROM donors', function(err, result) {
        if (err) return res.send('Erro de Banco de Dados.')

        const donors = result
        return res.render('index.html', { donors })
    })


})
server.post('/', function(req, res) {

    //Pegar dados do form
    const name = req.body.name
    const email = req.body.email
    const blood = req.body.blood


    if (name == '' || email == '' || blood == '') return res.send('Todos os campos são obrigatorios')


    const query = `INSERT INTO donors (NAME,EMAIL,BLOOD) VALUES ("${name}","${email}",upper("${blood}"))`
    db.query(query, function(err) {
        if (err) return res.send('Erro no banco de dados.')

        return res.redirect('/')
    })

})

// Ligar o servidor e perimitir acesso pela porta 
server.listen(5500, () => console.log('Sevidor Iniciado'))