const express = require("express");
const courses_detail_Model = require("../models/course_detail_Model");
const router = express.Router();

router.get("/le-tham-duong", (req, res) => {
  const returnObject = courses_detail_Model.all();
  res.render("partials/course_detail", {
    object: returnObject,
    layout: 'CourseDetail.hbs'
  });
});

module.exports = router;