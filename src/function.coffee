getStdin = require 'get-stdin'
faasFunction = require './function'

getStdin()
.then (request) -> faasFunction(request)
.catch console.log.bind console
