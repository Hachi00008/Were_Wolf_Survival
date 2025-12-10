##変身時の処理
#アイテム関連
    item replace entity @s weapon.mainhand with air
    function sys:player/inventory/save/_
    clear @s
    item replace entity @s armor.head with diamond_helmet[unbreakable={}]
    item replace entity @s armor.chest with diamond_chestplate[unbreakable={}]
    item replace entity @s armor.legs with diamond_leggings[unbreakable={}]
    item replace entity @s armor.feet with diamond_boots[unbreakable={}]
    advancement revoke @s only sys:system/sheathing
    advancement grant @s only sys:system/sheathing
    item replace entity @s hotbar.1 with iron_shovel[unbreakable={},enchantment_glint_override=true]
    item replace entity @s hotbar.2 with iron_pickaxe[unbreakable={},enchantment_glint_override=true]
    item replace entity @s hotbar.3 with iron_axe[unbreakable={},enchantment_glint_override=true]
    item replace entity @s hotbar.4 with bow[unbreakable={},enchantment_glint_override=true]
    item replace entity @s hotbar.5 with arrow 10
    item replace entity @s hotbar.6 with dark_oak_planks 64
    item replace entity @s hotbar.7 with cooked_beef 20
#タグ付与
    tag @s add transform