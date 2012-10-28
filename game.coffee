class window.InHumanGame
  constructor: (settings) ->
    settings.debug ?= false

    @width = settings.width ? 600
    @height = settings.height ? 400

    # Crafty initalizations
    Crafty.init @width, @height
    Crafty.canvas.init()

    # Setting debug mode if required
    if settings.debug
      Crafty.modules 'crafty-debug-bar': 'release', ->
        Crafty.debugBar.show()

    # MAIN Game Settings
    Crafty.background 'black'