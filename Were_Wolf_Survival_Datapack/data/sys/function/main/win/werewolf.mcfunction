##人狼勝利処理
#タイトル時間設定
    title @a times 0t 60t 20t
#タイトル
    title @a title {text:"人狼陣営の勝利",color:"red"}
#演出
    execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.0
#終了処理
    function sys:main/end