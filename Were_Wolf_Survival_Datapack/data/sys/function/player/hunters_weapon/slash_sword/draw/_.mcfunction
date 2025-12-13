##抜刀処理(000)
#スコアの切り替え
    scoreboard players set @s Weapon_Mode 1
#アイテム切り替え
    clear @s *[custom_data={"no_carry":true}]
    clear @s *[custom_data={"slash_sword":true}]
    item replace entity @s hotbar.0 with warped_fungus_on_a_stick[item_model="sys:katana_tou",custom_data={"slash_sword":true},enchantment_glint_override=true,item_name=[{text:"魂刀",color:"light_purple"}],attribute_modifiers=[{"type":"attack_speed",id:"1b0c667d-852e-4877-9fd7-e9dbd6646bd1",amount:-2.5,operation:"add_value",display:{type:"default"},slot:"hand"},{type:"attack_damage",id:"dd34d18a-24fb-48fc-9a68-20a55da1414d",amount:7,operation:"add_value",display:{type:"default"},slot:"hand"}]]
    item replace entity @s weapon.offhand with heart_of_the_sea[item_model="sys:katana_saya",custom_data={"slash_sword":true,"sheathing":true},item_name={text:"鞘",color:"light_purple"},enchantment_glint_override=true]
#演出
    playsound block.iron_door.open master @s ~ ~ ~ 0.5 1.0
    execute anchored eyes positioned ^ ^ ^1 run particle sweep_attack ~ ~ ~
#リセット
    advancement revoke @s only sys:system/sheathing