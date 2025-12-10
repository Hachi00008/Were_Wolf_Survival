##足にアイテムを装備する
#アイテムの設置
    $item replace entity @s armor.feet with $(id) $(count)
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].feet.components run function sys:player/inventory/load/equipment/feet/set_components with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].feet