var express = require('express');
var MyCourse =  require('../models/coursesModel');
var router1 = express.Router();

router1.get('/', function(req,res) {
    console.log("yes");
    const list = MyCourse.all();
    res.render('partials/courses', {
        allCourses: list,
        empty: list.length === 0, 
        layout: 'MyCourses.hbs'
    });
});

module.exports = router1;