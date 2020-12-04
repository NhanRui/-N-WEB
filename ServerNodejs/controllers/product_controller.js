const express = require('express');
const categoryModel = require('../models/product_modle');
const router = express.Router();

router.get('/', function (req, res) {
    const list = categoryModel.all();
    res.render('partials/product', {
      product_popular: list,
      empty: list.length === 0
    });
  })

module.exports = router;