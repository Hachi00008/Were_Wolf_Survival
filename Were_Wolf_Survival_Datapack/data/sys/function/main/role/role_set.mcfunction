##役職設定処理
#人狼の数が0以下なら失敗処理
    execute if score $Werewolf Role matches ..0 run tellraw @a [{text:"[System] ",color:"white"},{text:"人狼の数を1以上に設定してください",color:"red"}]
    execute if score $Werewolf Role matches ..0 as @a at @s run playsound entity.villager.no master @s ~ ~ ~ 1.0 1.0
    execute if score $Werewolf Role matches ..0 run return 0
#役職リセット
    function sys:main/role/role_reset
#人狼
    scoreboard players set $dummy Role_count 0
    function sys:main/role/werewolf
#村人
    tag @a[tag=!select,team=Sanka] add Villager
#タグのリセット
    tag @a remove select
#陣営チームに所属させる
    #人狼
        team join Werewolf @a[tag=Werewolf]
    #村
        team join Villager @a[tag=Villager]
#役職表示用
    #人狼陣営
        team join Werewolf_display 人狼
#終了処理
    return 1