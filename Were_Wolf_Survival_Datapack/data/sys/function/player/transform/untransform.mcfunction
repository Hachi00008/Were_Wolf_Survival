##変身解除処理
#演出
    playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 1.0 1.0
    particle spit ~ ~ ~ 0.5 1 0.5 0 500
#アイテムをクリアする
    item replace entity @s armor.head with air
    item replace entity @s armor.chest with air
    item replace entity @s armor.legs with air
    item replace entity @s armor.feet with air
    clear @s
#アイテムを読み込む
    function sys:player/inventory/load/_
#タグリセット
    tag @s remove transform
#リセット
    advancement revoke @s only sys:system/untransform