##役職表示処理
#タイトル表示時間変更
    title @a times 10t 40t 10t
#人狼
    execute as @a[tag=Werewolf] run title @s title {text:"役職:人狼",color:"red"}
    execute as @a[tag=Werewolf] run tellraw @s [{text:"[System] あなたの役職は... ",color:"white"},{text:"人狼",color:"red"},{text:" です。\n村人にバレないよう自身を",color:"white"},{text:"偽装",color:"red"},{text:"しながら殲滅しましょう",color:"white"}]
#村人
    execute as @a[tag=Villager] run title @s title {text:"役職:村人",color:"green"}
    execute as @a[tag=Villager] run tellraw @s [{text:"[System] あなたの役職は... ",color:"white"},{text:"村人",color:"green"},{text:"です。\n襲いかかってくる人狼を討伐、もしくはタスクを完遂しましょう。",color:"white"}]