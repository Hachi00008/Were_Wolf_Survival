##tick処理(プレイヤー)
#移動不可アイテム
    execute if entity @s[tag=transform] if score @s Weapon_Mode matches 0 unless items entity @s hotbar.0 * run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[item_model="sys:item_barrier",custom_data={no_carry:true},tooltip_display={"hide_tooltip":true},item_name={text:""}]
    execute if entity @s[tag=transform] if score @s Weapon_Mode matches 0 unless items entity @s hotbar.8 * run item replace entity @s hotbar.8 with warped_fungus_on_a_stick[item_name={text:"変身解除",color:"red"},item_model="sys:untransform",custom_data={"untransform":true,"no_carry":true}]
#右クリ処理
    execute if score @s right_click matches 1.. run function sys:player/right_click
#移動速度上昇
    execute if predicate sys:speed_up run attribute @s movement_speed modifier add 05fed2e8-9c60-4a7c-b31d-bcdd69d1f93c 0.1 add_value
    execute unless predicate sys:speed_up run attribute @s movement_speed modifier remove 05fed2e8-9c60-4a7c-b31d-bcdd69d1f93c
#変身可能
    tag @s remove cannot_untransform
#リセット
    advancement revoke @s only sys:system/tick