const express = require('express');
const router = express.Router();
router.use(express.static('public'));

router.get('/information', function (req, res) {
    res.render("lecturer_in4",{layout:"lecturer"});
  })

module.exports = router;