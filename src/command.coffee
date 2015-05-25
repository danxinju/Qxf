initialization = require './initialization'
help = require './help'

module.exports = (argv) ->
    parameter = argv[2]
    
    switch parameter
        when undefined then showHelp()
        when 'init' then init()


init = () ->
    initialization()

showHelp = () ->
    help.show('default')