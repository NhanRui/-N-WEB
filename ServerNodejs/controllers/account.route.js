const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
router.use(express.static('public'));
const uniqid = require('uniqid');
const userModel = require('../models/user.model');

router.get('/register',async function(req, res, next){
    res.render('home',{layout:"SignUp"});
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
    res.render('home',{layout:'SignUp'});
})

router.get('/is-available', async function(req,res,next){
    const email = req.query.email;
    const user = await userModel.singleByEmail(email);
    if(user === null){
        return res.json(true);
    }
    res.json(false);
})

router.get('/login',async function(req, res, next){
    res.render('home',{layout:"SignIn"});
})

router.post('/login',async function(req, res, next){
    
})

module.exports = router;