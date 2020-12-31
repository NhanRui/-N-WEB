const express = require("express");
const course_detail_Model = require("../models/course_detail_Model");
const courses_detail_Model = require("../models/course_detail_Model");
const router = express.Router();

router.get("/le-tham-duong", (req, res) => {
  const returnObject = courses_detail_Model.all();
  res.render("partials/course_detail", {
    object: returnObject,
    layout: 'CourseDetail.hbs',
  });
});

router.get("/course-detail/:id", async function (req, res) {
  let id = req.params.id;
  const returnObject = courses_detail_Model.all();
  const course_detail = await courses_detail_Model.singleFromSql(id);
  const lecturer = await courses_detail_Model.course_lecturer(id);
  let new_price = (course_detail[0].price - course_detail[0].price * course_detail[0].deal_value / 100);
  const [main, parent] = await course_detail_Model.course_cate(id);
  console.log(course_detail[0]);
  res.render('partials/course_detail', {
    layout: 'CourseDetail.hbs',
    object: returnObject,
    course_detail: course_detail[0],
    new_price,
    lecturer : lecturer[0],
    main,
    parent,
  })
})

module.exports = router;