var express = require('express');
var router = express.Router();

var burger = require('../models/burgers.js');

router.get('/', function (request, response) {
    burger.selectAll(function(data) {
        var viewObject = {
            burgers: data
        };
        response.render('index', viewObject);
    });
});

router.post('/burgers', function(request, response)  {
    burger.insertOne([
        'burger_name'
    ], [
            request.body.burger_name
        ], function(data)  {
            response.redirect('/');
        });
});

router.put('/burgers/:id', function (request, response) {
    var condition = 'id = ' + request.params.id;

    burger.updateOne({
        devoured: true
    }, condition, function(data)  {
        response.redirect('/');
    });
});

module.exports = router;