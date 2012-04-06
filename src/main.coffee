define [
	'vendor/enchant.js/enchant'
	], ->
  enchant()
  game = new Game(320, 320)

  game.onload = ->
    labelHello = new Label( "HelloWorld" )
    labelHello.color = "#0000ee"
    labelHello.font = "bold 32px serif"
    labelHello.x = 80
    labelHello.y = 120
    game.rootScene.addChild(labelHello)

  game.start()