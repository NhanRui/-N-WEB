const express = require('express');
const categoryModel = require('../models/product_modle');
const router = express.Router();

router.get('/', function (req, res) {
    const list = categoryModel.all();
    const list_top8=categoryModel.all_top8();
    const list_top8bs=categoryModel.all_top8bs();
    const list_english_menu=categoryModel.all_english_menu();
    const list_music_menu=categoryModel.all_music_menu();
    const list_IT_menu=categoryModel.all_IT_menu();
    res.render('layouts/index', {
      product_popular: list,
      empty: list.length === 0,
      product_top8: list_top8,
      empty_top8: list_top8.length === 0,
      product_top8bs: list_top8bs,
      empty_top8bs: list_top8bs.length === 0,
      product_menu_eng: list_english_menu,
      empty_menu_eng: list_english_menu.length===0,
      product_menu_music: list_music_menu,
      empty_menu_music: list_music_menu.length===0,
      product_menu_IT: list_IT_menu,
      empty_menu_IT: list_IT_menu.length===0,
    });
  })

module.exports = router;