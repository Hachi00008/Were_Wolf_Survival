##tick処理(プレイヤー)
#変身時間の処理
    execute if score @s Change_time matches 1.. run title @s actionbar [{text:"| 変身可能時間 : "},{score:{name:"@s",objective:"Change_time"}},{text:" Tick |"}]
    execute if score @s Change_time matches 1.. run scoreboard players remove @s Change_time 1
    execute if score @s Change_time matches 1 run function sys:player/transform/untransform
#移動不可アイテム
    execute if entity @s[tag=transform] if score @s Weapon_Mode matches 0 unless items entity @s hotbar.0 * run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[item_model="sys:item_barrier",custom_data={no_carry:true},tooltip_display={"hide_tooltip":true},item_name={text:""},enchantments={"sys:left_click":1},piercing_weapon={}]
    execute if entity @s[tag=transform] if score @s Weapon_Mode matches 0 unless items entity @s hotbar.8 * run item replace entity @s hotbar.8 with warped_fungus_on_a_stick[item_name={text:"変身解除",color:"red"},item_model="sys:untransform",custom_data={"untransform":true,"no_carry":true}]
#右クリ処理
    execute if score @s right_click matches 1.. run function sys:player/right_click
#移動速度上昇
    execute if predicate sys:speed_up run attribute @s movement_speed modifier add 05fed2e8-9c60-4a7c-b31d-bcdd69d1f93c 0.07 add_value
    execute unless predicate sys:speed_up run attribute @s movement_speed modifier remove 05fed2e8-9c60-4a7c-b31d-bcdd69d1f93c
#再度右クリ可能
    tag @s remove cannot_untransform
#リセット
    advancement revoke @s only sys:system/tick