const express = require('express');
const app = express();
const path = require('path');

const homeRouter = require('./router');

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.static(path.join(__dirname, 'public')));

app.use(express.urlencoded({extended: false}));
app.use(express.json());


app.use('/', homeRouter);

// catch 404 and forward to error handler
app.use((request, response, next) => {
    // Access response variable and handle it
    response.status(501).json({status: 'Not Implemented', message: "Method not implemented for requested resource", response: 'null'});
});

// Server setup
app.listen(8080 , ()=>{
    console.log("server running on http://localhost:8080/");
});