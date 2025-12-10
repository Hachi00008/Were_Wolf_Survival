##変身解除処理
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