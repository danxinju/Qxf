
exports.show = (type) ->
    switch type
        when 'default' then showDefaultHelp()


showDefaultHelp = () ->
    content = """
              Qxf 使用说明
              ===========================
              init 初始化一个项目
              """
    console.log content