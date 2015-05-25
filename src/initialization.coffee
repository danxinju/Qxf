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

        console.log '完成初始化，请使用qnpm install完成依赖安装'
    )