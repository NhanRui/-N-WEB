const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
router.use(express.static('public'));
const uniqid = require('uniqid');
const userModel = require('../models/user.model');

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
  
    const url = '/';
    res.redirect(url);
  })

module.exports = router;