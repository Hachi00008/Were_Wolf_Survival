##プレイ中の処理
#死体生成
    execute as @a[scores={death=1}] at @s run function sys:player/death
#勝利条件
#村
    execute unless entity @a[tag=Team_Werewolf,scores={death=0}] run function sys:main/win/villager
#人狼
    execute unless entity @a[team=Villager,scores={death=0}] run function sys:main/win/werewolf