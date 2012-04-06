
define(['vendor/enchant.js/enchant', "vendor/jquery-1.7.1.min", "vendor/sugar-1.2.4.min", "lib/all"], function() {
  var game;
  enchant();
  game = new Game(320, 320);
  game.onload = function() {
    var labelHello;
    labelHello = new Label("HelloWorld");
    labelHello.color = "#0000ee";
    labelHello.font = "bold 32px serif";
    labelHello.x = 80;
    labelHello.y = 120;
    return game.rootScene.addChild(labelHello);
  };
  return game.start();
});
