const express = require('express');
const { auth, requiresAuth } = require('express-openid-connect');
const homeRouter = require('./backend/api');
require('dotenv').config();

const config = {
  authRequired: false,
  auth0Logout: true,
  secret: process.env.SECRET,
  baseURL: process.env.BASE_URL,
  clientID: process.env.CLIENT_ID,
  issuerBaseURL: process.env.ISSUER_BASE_URL
};

const app = express();

app.set('view engine', 'ejs');

app.use(express.urlencoded({ extended: true }));

// auth router attaches /login, /logout, and /callback routes to the baseURL
app.use(auth(config));

// req.isAuthenticated is provided from the auth router
app.get('/', (req, res) => {
  console.log(req.oidc.isAuthenticated());
  res.render("index", {isAuthenticated: req.oidc.isAuthenticated()});
});

// private profile page for authentiicated users
app.get('/profile', requiresAuth(), function (req, res) {
    res.render('profile', {user : req.oidc.user});
});

app.use('/', homeRouter);

app.listen(3000)
