const express = require('express');
const categoryModel = require('../models/product_modle');
const router = express.Router();

router.get('/:id', async function (req, res) {
  const catId=req.params.id;
  const list = await categoryModel.getCateList(catId);
  res.render('search_site', {
    product_popular: list,
    empty: list.length === 0,
    cateId: {
      Id:catId,
    },
    layout: "search-item.hbs",
  });
})

router.get('/:id/rating-5', async function (req, res) {
  const catId=req.params.id;
  const list = await categoryModel.get5starCourse(catId);
  res.render('search_site', {
    product_popular: list,
    empty: list.length === 0,
    cateId: {
      Id:catId,
    },
    layout: "search-item.hbs",
  });
})

router.get('/:id/rating-up-4', async function (req, res) {
  const catId=req.params.id;
  const list = await categoryModel.getUp4starCourse(catId);
  res.render('search_site', {
    product_popular: list,
    empty: list.length === 0,
    cateId: {
      Id:catId,
    },
    layout: "search-item.hbs",
  });
})

router.get('/:id/rating-up-3', async function (req, res) {
  const catId=req.params.id;
  const list = await categoryModel.getUp3starCourse(catId);
  res.render('search_site', {
    product_popular: list,
    empty: list.length === 0,
    cateId: {
      Id:catId,
    },
    layout: "search-item.hbs",
  });
})
module.exports = router;  