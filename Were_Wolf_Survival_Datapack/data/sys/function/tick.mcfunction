##tick処理(システム)
#移動不可アイテムの削除
    kill @e[type=item,predicate=sys:no_carry]
#エンティティのtick処理
    execute as @e[tag=tick] at @s run function sys:main/entity_tick
#スコアごとの処理
    execute if score $dummy Game_flag matches 1 run function sys:main/playing