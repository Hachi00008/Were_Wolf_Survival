##/reloadで実行
#oh_my_datの初期化
    function oh_my_dat:sys/load
#スコアボードの初期化
    function sys:init/scoreboard
#チームの初期化
    function sys:init/team
#実行完了
    tellraw @a [{text:"Reloaded!"}]