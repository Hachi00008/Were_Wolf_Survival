##マップの中心を設定
#もともとの中心を削除
    kill @e[tag=map_center]
#中心用のアマスタ召喚
    summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Marker:true,Tags:["map_center"]}
#メッセージ
    tellraw @a [{text:"[System] マップの中心を設定しました"}]
#ボーダーの中心設定
    execute at @e[tag=map_center] run worldborder center ~ ~
#ボーダーの広さ設定
    worldborder set 250
#演出
    execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
#スコア変更
    scoreboard players set $dummy Game_flag 2