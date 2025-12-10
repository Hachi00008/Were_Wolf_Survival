##胴にアイテムを装備する
#アイテムを設置
    $item replace entity @s armor.chest with $(id) $(count)
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].chest.components run function sys:player/inventory/load/equipment/chest/set_components with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].chest