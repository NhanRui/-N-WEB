const express = require('express');
const morgan = require('morgan');
const exphbs = require('express-handlebars');
//<<<<<<< HEAD
//<<<<<<< HEAD
const hbs_sections = require('express-handlebars-sections');
const numeral=require('numeral');
//=======
//>>>>>>> 50e140cf2e173bfffe8cd5a385c0f55973606541
//=======
const hbs_sections = require('express-handlebars-sections');
const numeral=require('numeral');
//>>>>>>> 65755f8b74689fa503787a989208ba0ef87c8858
var mongoose=require('mongoose');
var path = require('path');
const session = require('express-session');
const MySQLStore = require('express-mysql-session')(session);
const config = require('./config/default.json');
const auth=require('./middleware/auth.mdw');
const { authLecturer } = require('./middleware/auth.mdw');

const app = express();

//-----------------------------------middle ware------------------------------
//mongoose.connect('localhost:27017/shopping');
app.use(express.static('public'));
app.use('/public',express.static('public'));
app.use(morgan('dev'));

//store session
const sessionStore = new MySQLStore(config.mysql);

app.set('trust proxy', 1)
app.use(session({
  secret: 'SECRET_KEY',
  resave: false,
  saveUnitialized: true,
  store: sessionStore,
  cookie: {
    //secure: true
  }
}));

var handlebars = require('express-handlebars').create({
  layoutsDir: path.join(__dirname, "views/layouts"),
  partialsDir: path.join(__dirname, "views/partials"),
  defaultLayout: 'index',
  extname: 'hbs',
  helpers:{
    format_number(val){
      return numeral(val).format('0,0') + " đ";
    }
  }
});

app.engine('hbs', handlebars.engine);
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, "views"));

app.use(express.urlencoded({
  extended: true
}));

//---local---
app.use(function (req,res,next){
  if(typeof(req.session.auth) === 'undefined'){
    req.session.auth = false;
  }

  res.locals.auth = req.session.auth;
  res.locals.authUser = req.session.authUser;
  next();
})

//--------------------------------view------------------------------------------
app.use('/', require('./controllers/product_controller'));
app.use('/index', require('./controllers/product_controller'));
app.use('/', require('./controllers/course_detail_controller'));

app.use('/account',require('./controllers/account.route'));
app.use('/search',require('./controllers/product_search_controller'));
app.get('/signin', function (req, res) {
  res.render('home', { layout: 'SignIn.hbs' });
});

app.get('/signup', function (req, res) {
  res.render('home', { layout: 'SignUp.hbs' });
});

app.get('/faq', function (req, res) {
  res.render('home',{layout: 'faq.hbs'});
});

app.get('/CourseActivate', function (req, res) {
  res.render('home',{layout: 'CourseActivate.hbs'});
});

app.get('/BecomeInstructor', function (req, res) {
  res.render('home',{layout: 'BecomeInstructor.hbs'});
});

app.get('/AccountInformation', function (req, res) {
  res.render('home',{layout: 'AccountInformation.hbs'});
});

/*app.get('/search_course', function (req, res) {
  //Can render for this layout
  res.render('search_site.hbs',{layout: 'search-item.hbs'});
});*/

// app.get('/MyCourse', function (req, res) {
//   //Can render for this layout
//   res.render('home',{layout: 'MyCourses.hbs'});
// });

app.use('/lecturer',auth.authLecturer, require('./controllers/lecturer_controller'));
app.use('/MyCourse', require('./controllers/courses_controller'));

const PORT = 3000;
app.listen(PORT, function () {
  console.log(`E-Commerce app is listening at http://localhost:${PORT}`)
})