##終了処理
#スコアリセット
    scoreboard players set $dummy Game_flag 0
    scoreboard players set @a death 0
#難易度変更
    difficulty peaceful
#変身解除
    execute as @a[tag=transform] run function sys:player/transform/untransform
#持ち物消去
    clear @a
#時間変更
    time set day
    gamerule advance_time false
#エフェクトクリア
    effect clear @a
#リザルト表示
    tellraw @a {text:"[Result]"}
    tellraw @a {text:"-----------------------------------------------------"}
    execute if entity @a[tag=Werewolf] run tellraw @a [{text:"人狼:"},{selector:"@a[tag=Werewolf]"}]
    execute if entity @a[tag=Villager] run tellraw @a [{text:"\n村人:"},{selector:"@a[tag=Villager]"}]
    tellraw @a {text:"-----------------------------------------------------"}
#タグの削除
    tag @s remove Team_Werewolf
#役職リセット
    function sys:main/role/role_reset