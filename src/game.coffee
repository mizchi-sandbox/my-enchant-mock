class MyGame extends enchant.Game
  constructor: ->
    super 320, 240

  onload: ->
    labelHello = new Label( "HelloWorld" )
    labelHello.color = "#0000ee"
    labelHello.font = "bold 32px serif"
    labelHello.x = 80
    labelHello.y = 120
    @rootScene.addChild(labelHello)

