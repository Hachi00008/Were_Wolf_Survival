##tick処理(プレイヤー)
#移動不可アイテム
    execute if entity @s[tag=transform] if score @s Weapon_Mode matches 0 unless items entity @s hotbar.0 * run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[item_model="sys:item_barrier",custom_data={no_carry:true},tooltip_display={"hide_tooltip":true},item_name={text:""}]
#右クリ処理
    execute if score @s right_click matches 1.. run function sys:player/right_click
#リセット
    advancement revoke @s only sys:system/tick