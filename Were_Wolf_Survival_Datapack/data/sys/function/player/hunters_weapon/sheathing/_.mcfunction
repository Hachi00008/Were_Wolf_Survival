##納刀処理
#スコアの切り替え
    scoreboard players set @s Weapon_Mode 0
#アイテムの切り替え
    clear @s *[custom_data={"no_carry":true}]
    clear @s *[custom_data~{"slash_sword":true}]
    item replace entity @s weapon.offhand with heart_of_the_sea[item_model="sys:katana",custom_data={"slash_sword":true},item_name=[{text:"魂刀",color:"light_purple"}],enchantment_glint_override=true]
#演出
    playsound block.iron_door.close master @s ~ ~ ~ 0.5 1.0