const express = require('express');
const cartModel=require('../models/cart.model');
const router = express.Router();

router.get('/',function(req,res){
    res.render('../views/layouts/user_Cart.hbs', {
        layout: false
    })
})

router.post('/add', async function(req, res){
    //console.log(req.session.authUser.user_id);
    faCart=await cartModel.getFaCartById(req.session.authUser.user_id);
    let flag=true;
    const item = await cartModel.getFaItem(req.body.id);
    for (const i of faCart)
    {
        if (i.course_id===req.body.id)
        {
            await cartModel.removeByID(req.session.cart,item.course_id,req.session.authUser.user_id)
            flag=false;
            break;
        }
    }
    if (flag){
        await cartModel.add(req.session.cart,req.session.authUser.user_id, item);
    }
    //cartModel.add(req.session.cart, item);
    res.redirect(req.headers.referer)
})

module.exports=router;