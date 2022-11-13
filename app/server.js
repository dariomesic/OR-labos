const express = require('express');
const app = express();
const path = require('path');

const homeRouter = require('./router');

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.static(path.join(__dirname, 'public')));

app.use(express.urlencoded({extended: true}));
app.use('/', homeRouter);


// Server setup
app.listen(8080 , ()=>{
    console.log("server running on http://localhost:8080/");
});