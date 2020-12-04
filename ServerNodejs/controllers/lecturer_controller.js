const express = require('express');
const router = express.Router();

router.get('/information', function (req, res) {
    res.render('lecturer/information');
  })

module.exports = router;