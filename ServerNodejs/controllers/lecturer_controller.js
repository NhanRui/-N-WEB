const express = require('express');
const router = express.Router();

router.get('/information', function (req, res) {
    res.render("lecturer_site",{layout:"information.hbs"});
  })

module.exports = router;