##インベントリにアイテムを設置
#アイテムを設置
    $item replace entity @s container.$(Slot) with $(id) $(count)
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].components run function sys:player/inventory/load/inventory/set_components with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]
#まだあるなら再帰
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].Slot run function sys:player/inventory/load/inventory/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]