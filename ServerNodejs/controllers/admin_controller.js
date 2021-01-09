const express = require('express');
const router = express.Router();
const lecturerModel = require('../models/lecturer_model');
const userModel = require('../models/user.model');
const moment = require('moment');
router.use(express.static('public'));
router.use(express.static('upload'));

router.get('/', function (req, res) {  //Nhan them de test
    res.render('vwAdmin/adminLayout',{layout: false});
  });

module.exports = router;