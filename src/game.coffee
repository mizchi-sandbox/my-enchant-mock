class MyLabel extends enchant.Label
  constructor: (text,  x = 0, y = 0, color = "#000000", font = "bold 32px serif")->
    super text
    @x = x
    @y = y
    @color = color
    @font = font

class MyGame extends enchant.Game
  constructor: ->
    super 320, 240

  onload: ->
    labelHello = new MyLabel( "HelloWorld", 120, 80)
    @rootScene.addChild(labelHello)

