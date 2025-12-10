##右クリ時の処理
#歪んだキノコ付きの棒ごとの処理
    execute if predicate sys:has_001 run function sys:player/transform/change
#リセット
    scoreboard players reset @s right_click