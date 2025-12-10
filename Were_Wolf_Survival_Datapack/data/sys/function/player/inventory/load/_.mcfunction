##アイテムのロード
#データの1番目のアイテムを検知する
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].Slot run function sys:player/inventory/load/inventory/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].head run function sys:player/inventory/load/equipment/head/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].head
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].feet run function sys:player/inventory/load/equipment/feet/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].feet
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].chest run function sys:player/inventory/load/equipment/chest/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].chest
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].legs run function sys:player/inventory/load/equipment/legs/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].legs
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].offhand run function sys:player/inventory/load/equipment/offhand/_ with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0].offhand
#リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Vault[0]
#音を消す
    stopsound @a[distance=..15] * item.armor.equip_chain
    stopsound @a[distance=..15] * item.armor.equip_iron
    stopsound @a[distance=..15] * item.armor.equip_leather
    stopsound @a[distance=..15] * item.armor.equip_gold
    stopsound @a[distance=..15] * item.armor.equip_diamond
    stopsound @a[distance=..15] * item.armor.equip_netherite
    stopsound @a[distance=..15] * item.armor.equip_copper
    stopsound @a[distance=..15] * item.armor.equip_turtle
    stopsound @a[distance=..15] * item.armor.equip_generic