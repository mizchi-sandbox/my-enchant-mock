require [
	'vendor/enchant.js/enchant'
  "vendor/jquery-1.7.1.min"
  "vendor/sugar-1.2.4.min"
  ], ->
    enchant()
    Object.extend()
    window.wand = {}
    
    require ["lib/all"], ->
      (new MyGame).start()
