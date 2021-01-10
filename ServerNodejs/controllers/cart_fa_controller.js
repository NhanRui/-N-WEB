const express = require('express');
const cartModel=require('../models/cart.model');
const router = express.Router();

router.get('/',function(req,res){
    const shoppingCart=req.session.shopCart;
    console.log(shoppingCart);
    res.render('../views/layouts/user_Cart.hbs', {
        shoppingCart,
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

router.post('/addCart', async function(req, res){
    //console.log(req.session.authUser.user_id);
    shopCart=await cartModel.getBuyCartById(req.session.authUser.user_id);
    let flag=true;
    const item = await cartModel.getCartItem(req.body.id);
    for (const i of shopCart)
    {
        if (i.course_id===req.body.id)
        {
            //await cartModel.removeByID(req.session.shopCart,item.course_id,req.session.authUser.user_id)
            res.redirect('/cart');
            break;
        }
    }
    if (flag){
        await cartModel.addCart(req.session.shopCart,req.session.authUser.user_id, item);
        await cartModel.removeByID(req.session.cart,item.course_id,req.session.authUser.user_id);
    }
    //cartModel.add(req.session.cart, item);
    res.redirect(req.headers.referer)
})

router.post('/del', async function(req, res){
    //console.log(req.session.authUser.user_id);
    await cartModel.removeByIDCart(req.session.shopCart,req.body.id,req.session.authUser.user_id);
    //cartModel.add(req.session.cart, item);
    res.redirect(req.headers.referer)
})

module.exports=router;