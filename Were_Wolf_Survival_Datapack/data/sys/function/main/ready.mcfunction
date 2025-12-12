##ゲーム開始処理
#マップの中心を設定していないならリセット
    execute if score $dummy Game_flag matches 1 run tellraw @s [{text:"[System] ",color:"white"},{text:"マップの中心を設定してません",color:"red"}]
    execute if score $dummy Game_flag matches 1 run playsound entity.villager.no master @s ~ ~ ~
    execute if score $dummy Game_flag matches 1 run return 0
#役職設定
    execute unless function sys:main/role/role_set run return fail
#ゲームモード変更
    gamemode survival @a[team=!Fusanka,team=!Tenkai]
    gamemode spectator @a[team=Fusanka]
    gamemode spectator @a[team=Tenkai]
#素手のダメージ変更(念の為)
    execute as @a run attribute @s attack_damage base set 1
#判定のタグ付け
    tag @a remove Team_Werewolf
    tag @a[tag=Werewolf] add Team_Werewolf
#スコアリセット
    scoreboard players set $dummy Game_flag 1
    scoreboard players set @a death 0
#難易度変更
    difficulty normal
#アイテムのkill
    kill @e[type=item]
#時間の変更
    time set day
#アイテムの初期配布
    give @a[team=!Fusanka,team=!Tenkai] cooked_beef 3
    give @a[team=!Fusanka,team=!Tenkai] torch 64
#天気の変更
    weather clear
#体力回復
    execute as @a run attribute @s max_health base set 20
    effect give @s regeneration 1 255 true
    effect give @s saturation 1 255 true
#経験値
    xp set @a 0 points
    xp set @a 0 levels
#役職表示
    function sys:main/role/show_role