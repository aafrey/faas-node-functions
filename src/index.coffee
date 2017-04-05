getStdin = require 'get-stdin'
faasFunction = require './function/function'

getStdin()
.then (request) -> faasFunction(request)
.then console.log
.catch console.log.bind console
