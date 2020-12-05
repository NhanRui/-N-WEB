const express = require("express");
const coursesModel = require("../models/coursesModel");
const router = express.Router();

router.get("/", function (req, res) {
  const list = coursesModel.all();
  res.render("partials/courses", {
    allCourses: list,
    empty: list.length === 0,
    layout: "MyCourses.hbs",
  });
});

module.exports = router;
