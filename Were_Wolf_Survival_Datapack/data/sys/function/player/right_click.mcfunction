##右クリ時の処理
#リセット
    scoreboard players reset @s right_click
#歪んだキノコ付きの棒ごとの処理
    execute if predicate sys:has_001 run function sys:player/transform/change
    execute unless entity @s[tag=cannot_untransform] if predicate sys:has_untransform run function sys:player/transform/untransform