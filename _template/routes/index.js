var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', {
        title: 'hello Qxf'
    });
});

router.get('/flight/', function(req, res, next) {
    res.end('flight');
});




module.exports = router;
