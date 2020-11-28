const express = require('express');
const morgan = require('morgan');
const exphbs = require('express-handlebars');

const app = express();

app.use(express.static('public'));
app.use(morgan('dev'));
app.set('view engine', 'hbs');
app.use(express.urlencoded({
  extended: true
}));

app.get('/', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'index.hbs',
  }));
  res.render('home');
});

app.get('/index', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'index.hbs',
  }));
  res.render('home');
});

app.get('/SignIn', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'SignIn.hbs',
  }));
  res.render('home');
});

app.get('/SignUp', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'SignUp.hbs',
  }));
  res.render('home');
});

app.get('/faq', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'faq.hbs',
  }));
  res.render('home');
});

app.get('/CourseActivate', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'CourseActivate.hbs',
  }));
  res.render('home');
});

app.get('/BecomeInstructor', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'BecomeInstructor.hbs',
  }));
  res.render('home');
});

app.get('/AccountInformation', function (req, res) {
  app.engine('hbs', exphbs({
    defaultLayout: 'AccountInformation.hbs',
  }));
  //Can render for this layout
  res.render('home');
});

const PORT = 3000;
app.listen(PORT, function () {
  console.log(`E-Commerce app is listening at http://localhost:${PORT}`)
})