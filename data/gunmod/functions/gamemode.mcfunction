# ゲームモードファンクション

# １）#gamemode に現在の gamemode をコピー
scoreboard players operation #tmpmode tmpmode = #gamemode gamemode

# ２）デバッグ用：いまの gamemode の値を画面に表示
#tellraw @a {"text":"現在の gamemode の値は ","extra":[{"score":{"name":"#gamemode","objective":"gamemode"}}]}

# ３）#gamemode が 0 → gamemode を 1 にする
execute if score #tmpmode tmpmode matches 0 run scoreboard players set #gamemode gamemode 1
execute if score #gamemode gamemode matches 1 run say ゲームモードがキル数になりました。

# ４）#gamemode が 1 → gamemode を 0 にする
execute if score #tmpmode tmpmode matches 1 run scoreboard players set #gamemode gamemode 0
execute if score #gamemode gamemode matches 0 run say ゲームモードがライフ制になりました。
