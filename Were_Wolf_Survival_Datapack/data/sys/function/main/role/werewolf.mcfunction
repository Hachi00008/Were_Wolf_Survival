##役職設定(人狼)
#カウント増加
    scoreboard players add $dummy Role_count 1
#役職タグ付与
    tag @a[sort=random,limit=1,team=Sanka,tag=!select] add Werewolf
    tag @a[tag=Werewolf] add select
#現在の人数が設定人数より少ない場合再帰
    execute if score $dummy Role > $dummy Role_count run function sys:main/role/werewolf