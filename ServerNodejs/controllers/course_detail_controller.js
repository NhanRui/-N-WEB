const express = require("express");
const courses_detail_Model = require("../models/course_detail_Model");
const router = express.Router();

router.get("/", (req, res) => {
  const list = courses_detail_Model.all();
  res.render("partial");
});
