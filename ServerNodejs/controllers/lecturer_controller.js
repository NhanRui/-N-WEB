const express = require('express');
const router = express.Router();
const multer = require('multer');
const lecturerModel = require('../models/lecturer_model');
const userModel = require('../models/user.model');
const uniqid = require('uniqid');
router.use(express.static('public'));
router.use(express.static('upload'));
var path = require('fs');

router.get('/', function (req, res) {  //Nhan them de test
  res.redirect('information');
});

router.get('/information', function (req, res) {
  res.render('vwLecturer/lecturer_in4',{
    layout: 'lecturer.hbs',
    acc: req.session.authUser,
    nam: req.session.authUser.gender==='Nam' ,
    nu: req.session.authUser.gender==="Nữ",
    else: req.session.authUser.gender==="Nam" || req.session.authUser.gender==="Nữ",
  });
})

router.post('/information', async function (req, res) {
  const lect={
    user_id: req.session.authUser.user_id,
    name: req.body.username || req.session.authUser.name,
    gender: req.body.gender,
    dob: req.body.dob || req.session.authUser.dob,
    phone_number: req.body.sdt || req.session.authUser.phone_number,
    email: req.session.authUser.email,
    password: req.session.authUser.password,
    password_lvl2: req.session.authUser.password_lvl2,
    avatar: req.body.ava || req.session.avatar,
    description: req.body.des,
    role: req.session.authUser.role
  }
  req.session.authUser = lect;
  await userModel.patch(lect);
  
  res.render('vwLecturer/lecturer_in4',{
    layout: 'lecturer.hbs',
    acc: req.session.authUser,
    nam: req.session.authUser.gender==='Nam' ,
    nu: req.session.authUser.gender==="Nữ",
    else: req.session.authUser.gender==="Nam" || req.session.authUser.gender==="Nữ",
  });
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
  req.session.cid = uniqid('C');
  const cat = await lecturerModel.category();
  res.render('vwLecturer/addcourse',{
    layout:'lecturer',
    category: cat,
  });
})

router.post('/addcourse',async function(req,res){
  var img="";
  var vid="";
  if(req.body.avtURL === 'ok'){
    img="upload/course/"+req.session.cid+".jpg";
  }else{
    img="images/ini_course.jpg";
  }

  if(req.body.introURL !== ''){
    vid=req.body.introURL;
  }else{
    vid = null;
  }

  const course={
    course_id: req.session.cid,
    course_name: req.body.name,
    description: req.body.des,
    intro_image: img,
    price: 699000,
    deal_value: 0,
    course_intro_description: req.body.course_description,
    course_intro_video: vid,
    course_benefit_description: req.body.benefit,
    course_suitability: req.body.suitable,
    lecturer_id: req.session.authUser.user_id,
    categoty_id: req.body.sub_category
  }
  await lecturerModel.add(course);
  //store.destroy(req.session.cid);
  res.redirect('/lecturer');
})

router.post('/courseavatar',function(req,res){
  console.log('upload avt');
  /*
  var filepath= `./upload/${req.session.authUser.user_id}`;
  var dir = filepath;
  if (!path.existsSync(dir)) {
      path.mkdirSync(dir,0744);
  }
  */
 var filepath = './upload/course';
 var filename = req.session.cid+".jpg";
 
  const storage = multer.diskStorage({
    destination: function(req, file, cb){
      cb(null, filepath)
    },
    filename: function(req,file,cb){
      //cb(null, file.originalname)
      cb(null, filename)
    }
  })

  const upload = multer({storage: storage});
  upload.single('avatar')(req, res, function(err){
    if(err){
      console.log(err);
    }
  })
})

/*
router.post('/courseintro',async function(req,res){
  console.log('upload intro');

  
 var filepath = './upload/intro';
 
  const storage = multer.diskStorage({
    destination: function(req, file, cb){
      cb(null, filepath)
    },
    filename: function(req,file,cb){
      //cb(null, file.originalname)
      //req.session.vid=file.filename;
      cb(null, file.filename)
    }
  })
  console.log(req.session.vid);
  const upload = multer({storage: storage});
  await upload.single('avatar')(req, res, async function(err){
    if(err){
      console.log(err);
    }
  })
})
*/

router.post('/useravt',async function(req,res){
 var filepath = './upload/user_avatar';
 var filename = req.session.authUser.user_id+".jpg";
 
  const storage = multer.diskStorage({
    destination: function(req, file, cb){
      cb(null, filepath)
    },
    filename: function(req,file,cb){
      //cb(null, file.originalname)
      cb(null, filename)
    }
  })
  
  const upload = multer({storage: storage});
  await upload.single('avatar')(req, res, async function(err){
    if(err){
      console.log(err);
    }else{
      var onlyava ={
        user_id: req.session.authUser.user_id,
        avatar: '/upload/user_avatar/'+filename
      } 
      await userModel.patch(onlyava);
      req.session.authUser.avatar = onlyava.avatar;
      res.locals.authUser = req.session.authUser;

      res.redirect('information');
    }
  })
})

router.get('/get_user_avtURL',function(req,res,next){
  return res.json("/upload/user_avatar/"+req.session.authUser.user_id+".jpg");
})

router.get('/get_subcat',async function(req,res,next){
  const subcatid = req.query.id;
  const subcat = await lecturerModel.sub_category(subcatid);
  if(subcat=== null){
    return res.json(null);
  }
  return res.json(subcat);
})

router.get('/get_avtURL',function(req,res,next){
  return res.json("/upload/course/"+req.session.cid+".jpg");
})

router.get('/get_introURL',function(req,res,next){
  return res.json("/upload/intro/"+req.session.vid);
})

module.exports = router;