const express = require('express');
const categoryModel = require('../models/product_modle');
const router = express.Router();

router.get('/', function (req, res) {
    const list = categoryModel.all();
    const list_top8=categoryModel.all_top8();
    const list_top8bs=categoryModel.all_top8bs();
    res.render('partials/product', {
      product_popular: list,
      empty: list.length === 0,
      product_top8: list_top8,
      empty_top8: list_top8.length === 0,
      product_top8bs: list_top8bs,
      empty_top8bs: list_top8bs.length === 0,
    });
  })

module.exports = router;