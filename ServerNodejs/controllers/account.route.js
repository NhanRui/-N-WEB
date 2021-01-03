const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
router.use(express.static('public'));
const uniqid = require('uniqid');
const userModel = require('../models/user.model');
const auth = require('../middleware/auth.mdw');
const moment = require('moment')

//Note nho them req.session.retURL cho nhung trang truoc khi truy cap vao trang 

router.get('/register',function(req, res, next){
    res.render('layouts/SignUp',{layout:false});
})

router.post('/register',async function(req, res, next){
    const hash = bcrypt.hashSync(req.body.pass, 10);
    const fullname = req.body.ho +" "+ req.body.ten;
    const user = {
        user_id: uniqid('U'),
        name: fullname,
        gender: null,
        dob: null,
        phone_number: null,
        email: req.body.email,
        password: hash,
        password_lvl2: null,
        avatar: null,
        description: null,
        role: 0
    }

    await userModel.add(user);
    req.session.auth = true;
    req.session.authUser = user;
    res.redirect('/');
})


router.get('/is-available', async function(req,res,next){
    const email = req.query.email;
    const user = await userModel.singleByEmail(email);
    if(user === null){
        return res.json(true);
    }
    res.json(false);
})

/*
router.get('/is-available-usname', async function (req, res) {
    const username = req.query.user;
    const user = await userModel.singleByUserName(username);
    if (user === null) {
      return res.json(true);
    }
    res.json(false);
  })
*/  

  router.get('/login', function (req, res) {
    res.render('layouts/SignIn', {
      layout: false
    });
  })
  
  router.post('/login', async function (req, res) {
    const user = await userModel.singleByEmail(req.body.email);
    if (user === null) {
      return res.render('layouts/SignIn', {
        layout: false,
        err_message: 'Invalid username.'
      });
    }
  
    const ret = bcrypt.compareSync(req.body.pass, user.password);
    if (ret === false) {
      return res.render('layouts/SignIn', {
        layout: false,
        err_message: 'Invalid password.'
      });
    }

    req.session.auth = true;
    req.session.authUser = user;
  
    const url = req.session.retUrl || '/';
    res.redirect(url);
  })

  router.post('/logout', async function (req, res) {
    req.session.auth = false;
    req.session.authUser = null;
    req.session.retUrl = null;
    console.log("Logging out");
  
    const url = req.headers.referer || '/';
    console.log(url);
    res.redirect(url);
  })

  router.get('/profile', function(req, res, next){
    const user = req.session.authUser;
    const firstName = user.name.split(' ')[1];
    const lastName = user.name.split(' ')[0];
    res.render('layouts/AccountInformation',{
      layout:false,
      user,
      firstName,
      lastName
    });
  })

  router.post('/profile', async (req, res) => {
    console.log(req.body)
    const date = moment(req.body.dob).format("YYYY-MM-DD");
    const changedUser = {
      name:  req.body.ho + ' ' + req.body.ten,
      email: req.body.email,
      phone_number: req.body.phone_number,
      dob: date,
      gender: req.body.gender
    };
    await userModel.changeInfo(changedUser);
    const newUser = await userModel.singleByEmail(req.body.email);
    req.session.authUser = newUser;
    console.log(newUser);
    res.redirect('/account/profile');
  })


  router.post('/password-change', async function (req, res) {
    const user = req.session.authUser;
    console.log(user)
    const firstName = user.name.split(' ')[1];
    const lastName = user.name.split(' ')[0];
    const ret = bcrypt.compareSync(req.body.old_ps, user.password);
    if (ret === false) {
      return res.render('layouts/AccountInformation', {
        layout: false,
        error_message: "Incorrect password",
        user,
        firstName, lastName
      })
    }

    if (req.body.new_ps !== req.body.confirm_ps) {
      return res.render('layouts/AccountInformation', {
        layout: false,
        error_message: "Confirmed password must be similar to new password",
        user,
        firstName, lastName
      })
    }
    console.log(user)

    const newPassword = bcrypt.hashSync(req.body.new_ps, 10);
    await userModel.changePassword(user.user_id, newPassword);
    const newUser = await userModel.singleByEmail(user.email);
    req.session.authUser = newUser;
    res.redirect('/account/profile');
  })

module.exports = router;