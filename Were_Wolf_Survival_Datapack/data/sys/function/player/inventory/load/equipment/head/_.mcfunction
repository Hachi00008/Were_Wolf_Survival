##頭に装備をつける
#アイテムの設置
    $item replace entity @s armor.head with $(id) $(count)
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].head.components run function sys:player/inventory/load/equipment/head/set_components with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].head