initialization = require './initialization'

module.exports = (argv) ->
    parameter = argv[2]
    switch parameter
        when 'init' then init()


init = () ->
    initialization()