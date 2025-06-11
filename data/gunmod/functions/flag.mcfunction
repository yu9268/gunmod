# toggle_flag.mcfunction

# １）origFlag に現在の flag をコピー
scoreboard players operation #tmpflag tmpflag = #flag flag

# ２）デバッグ用：いまの flag の値を画面に表示
#tellraw @a {"text":"現在の tmpflag の値は ","extra":[{"score":{"name":"#tmpflag","objective":"tmpflag"}}]}

# ３）origFlag が 0 → flag を 1 にする
execute if score #tmpflag tmpflag matches 0 run scoreboard players set #flag flag 1
execute if score #flag flag matches 1 run say flag が 1 になりました

# ４）origFlag が 1 → flag を 0 にする
execute if score #tmpflag tmpflag matches 1 run scoreboard players set #flag flag 0
execute if score #flag flag matches 0 run say flag が 0 になりました

scoreboard objectives setdisplay sidebar life
scoreboard players reset @a team_count