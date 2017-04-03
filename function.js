(function() {
  var faasFunction, getStdin;

  getStdin = require('get-stdin');

  faasFunction = require('./function');

  getStdin().then(function(request) {
    return faasFunction(request);
  })["catch"](console.log.bind(console));

}).call(this);
