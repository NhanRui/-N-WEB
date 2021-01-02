const express = require('express');
const cartModel=require('../models/cart.model');
const router = express.Router();

router.get('/',function(req,res){
    res.render('layouts/index');
})

router.post('/add', async function(req, res){
    const item = {
        id: req.body.id
    }
    cartModel.add(req.session.cart, item);
    res.redirect(req.headers.referer)
})

module.exports=router;