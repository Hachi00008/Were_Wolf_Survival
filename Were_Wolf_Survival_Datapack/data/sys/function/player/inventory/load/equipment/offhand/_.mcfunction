##オフハンドにアイテムを装備する
#アイテムの設置
    $item replace entity @s weapon.offhand with $(id) $(count)
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].offhand.components run function sys:player/inventory/load/equipment/offhand/set_components with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].offhand