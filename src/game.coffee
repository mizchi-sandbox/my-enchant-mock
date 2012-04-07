class MyLabel extends enchant.Label
  constructor: (text,  x = 0, y = 0, color = "#000000", font = "bold 32px serif")->
    super text
    @x = x
    @y = y
    @color = color
    @font = font

class Player extends Sprite
  constructor: (scene, x, y) ->
    super 32, 32
    @x = x
    @y = y
    @scene = scene
    game = enchant.Game.instance
    @image = game.assets['/assets/img/chara0.gif']

    @addEventListener 'enterframe', ->
      if game.input.up
        @y -= 5
      else if game.input.down
        @y += 5
      if game.input.left
        @x -= 5
      else if game.input.right
        @x += 5

class MyScene extends enchant.Scene
  constructor: ->
    super()
    @game = enchant.Game.instance
    @addChild new Player(@, 100, 100)

class MyGame extends enchant.Game
  constructor : ->
    super 320, 320
    @fps = 30
    @preload('/assets/img/chara0.gif')
    window.game = @

  onload : ->
    @pushScene (new MyScene)

    # @rootScene.addChild (new Player @, 100, 100)
#     @rootScene.addChild (new MyLabel "HelloWorld", 120, 80)
