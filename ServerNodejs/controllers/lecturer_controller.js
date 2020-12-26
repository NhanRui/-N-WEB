const express = require('express');
const router = express.Router();
const multer = require('multer');
const lecturerModel = require('../models/lecturer_model');
router.use(express.static('public'));

router.get('/information', function (req, res) {
    res.render("lecturer_in4",{layout:"lecturer"});
})

router.get('/upload', function (req, res) {  //Nhan them de test
    res.render('lecturer_course',{layout: 'lecturer'});
});

router.post('/upload',function(req,res){
  const storage = multer.diskStorage({
    destination: function(req, file, cb){
      cb(null, './upload')
    },
    filename: function(req,file,cb){
      cb(null, file.originalname)
    }
  })

  const upload = multer({storage: storage});
  upload.array('video',3)(req, res, function(err){
    if(err){
      console.log(err);
    } else{
      res.render('lecturer_course',{layout:'lecturer'});
    }
  })
})

router.get('/addcourse',async function(req,res){
  const cat = await lecturerModel.category();
  res.render('vwLecturer/addcourse',{
    layout:'lecturer',
    category: cat
  });
})

router.get('/get_subcat',async function(req,res,next){
  const subcatid = req.query.id;
  const subcat = await lecturerModel.sub_category(subcatid);
  console.log(subcat);
  if(subcat=== null){
    return res.json(null);
  }
  return res.json(subcat);
})

module.exports = router;