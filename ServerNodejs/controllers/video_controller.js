const express = require('express');

const router = express.Router();


router.get('/', async function (req, res) {
    res.render('layouts/video_site', {
        layout: "video_site.hbs"
    });
  })


module.exports = router;  