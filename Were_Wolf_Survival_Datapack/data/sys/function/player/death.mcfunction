##死亡時の処理
#自分のUUIDをストレージに一時保管
    data modify storage sys:game UUID set from entity @s UUID
#天界チームへ移動
    team join Tenkai @s
#UUIDを使い死体を召喚
    function sys:player/summon_mannequin with storage sys:game
#死体へtp
    #tp @s @e[type=mannequin,limit=1,tag=summon_init]
#タグを外す
    tag @e[tag=summon_init] remove summon_init
#スコア変更
    scoreboard players set @s death 2