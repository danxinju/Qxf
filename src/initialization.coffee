fs = require 'fs-extra'
path = require 'path'
child_process = require 'child_process'


module.exports = () ->
    src = path.join(__dirname, '../_template')
    target = process.cwd()

    fs.copy(src, target, (err) ->
        if err
            console.log '初始化失败，错误信息：'
            console.error err
            return

        child_process.exec('qnpm install', (error, stdout, stderr) ->
            console.log "stdout: #{stdout}"
            console.log "stderr: #{stderr}"
            if error isnt null
                console.log "exec error: #{error}"
            else
                console.log '初始化完成'
        )
    )