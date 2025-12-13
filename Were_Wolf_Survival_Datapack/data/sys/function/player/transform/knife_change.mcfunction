##変身時の処理
#演出
    playsound block.beacon.deactivate master @a ~ ~ ~ 1.5 0.5
    playsound block.respawn_anchor.deplete master @a ~ ~ ~ 1.0 1.0
    particle spit ~ ~ ~ 0.5 1.5 0.5 0 500
#アイテム関連
    item replace entity @s weapon.mainhand with air
    function sys:player/inventory/save/_
    clear @s
    item replace entity @s armor.head with diamond_helmet[unbreakable={},equippable={asset_id:"clown",slot:"head"}]
    item replace entity @s armor.chest with diamond_chestplate[unbreakable={},equippable={asset_id:"clown",slot:"chest"}]
    item replace entity @s armor.legs with diamond_leggings[unbreakable={},equippable={asset_id:"clown",slot:"legs"}]
    item replace entity @s armor.feet with diamond_boots[unbreakable={},equippable={asset_id:"clown",slot:"feet"}]
    item replace entity @s hotbar.0 with warped_fungus_on_a_stick[item_model="sys:knife",enchantment_glint_override=true,item_name={text:"ナイフ",color:"light_purple"},attribute_modifiers=[{"type":"attack_speed",id:"1b0c667d-852e-4877-9fd7-e9dbd6646bd1",amount:-2.5,operation:"add_value",display:{type:"default"},slot:"hand"},{type:"attack_damage",id:"dd34d18a-24fb-48fc-9a68-20a55da1414d",amount:7,operation:"add_value",display:{type:"default"},slot:"hand"}],custom_data={"knife":true}]
    item replace entity @s hotbar.1 with iron_shovel[unbreakable={},enchantment_glint_override=true,attribute_modifiers=[{type:"attack_damage",amount:-1,id:"ca70d8db-cedc-4ea4-9624-03fbd49afb8f",operation:"add_value",display:{type:"default"},slot:"hand"}]]
    item replace entity @s hotbar.2 with iron_pickaxe[unbreakable={},enchantment_glint_override=true,attribute_modifiers=[{type:"attack_damage",amount:-1,id:"f1f0e0e9-a793-4732-8050-46ea93a322e0",operation:"add_value",display:{type:"default"},slot:"hand"}]]
    item replace entity @s hotbar.3 with iron_axe[unbreakable={},enchantment_glint_override=true,attribute_modifiers=[{type:"attack_damage",amount:-1,id:"f669513e-93de-42a6-b4ac-afef67eacab6",operation:"add_value",display:{type:"default"},slot:"hand"}]]
    item replace entity @s hotbar.4 with dark_oak_planks 64
    item replace entity @s hotbar.5 with cooked_beef 20
#タグ付与
    tag @s add transform
    tag @s add cannot_untransform
#スコア設定
    scoreboard players set @s Change_time 3600
    scoreboard players set @s Weapon_Mode 99