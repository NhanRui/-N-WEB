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

router.get('/student', async function(req,res){
  const list = await userModel.brief();
  const lock = await userModel.lock();
  var length = 0;
  if(lock !== null){
    length = lock.length;
  }
  res.render('vwAdmin/manageStudent', {
    layout: './../vwAdmin/adminLayout',
    list: list,
    list_empty: list === null,
    lock: lock,
    lock_empty: lock === null,
    lock_length: length 
  })
})

router.get('/student/lock/:id', async function(req,res){
  const user = await userModel.singleById(req.params.id);
  user.role = 3;
  await userModel.patch(user);
  res.json(user);
})

module.exports = router;