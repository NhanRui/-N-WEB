const express = require('express');
const router = express.Router();
const multer = require('multer');
const lecturerModel = require('../models/lecturer_model');
const uniqid = require('uniqid');
router.use(express.static('public'));

router.get('/', function (req, res) {  //Nhan them de test
  res.render('lecturer_in4',{layout: 'lecturer.hbs'});
});

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

router.post('/addcourse',async function(req,res){
  const course={
    course_id: uniqid('C'),
    course_name: req.body.name,
    description: req.body.des,
    intro_image: null||'images/ini_course.jpg',
    price: 699000,
    deal_value: 0,
    course_intro_description: req.body.course_description,
    course_intro_video: null,
    course_benefit_description: req.body.benefit,
    course_suitability: req.body.suitable,
    lecturer_id: req.session.authUser.user_id,
    categoty_id: req.body.sub_category
  }
  await lecturerModel.add(course);
  res.redirect('/lecturer');
})

router.get('/get_subcat',async function(req,res,next){
  const subcatid = req.query.id;
  const subcat = await lecturerModel.sub_category(subcatid);
  if(subcat=== null){
    return res.json(null);
  }
  return res.json(subcat);
})

module.exports = router;