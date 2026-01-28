# Initialiser le système de zones
# Créer le marker de spawn si nécessaire

# Marquer le spawn mondial à 0,0 si pas déjà fait
execute unless entity @e[type=minecraft:marker,tag=world_spawn] run summon minecraft:marker 0 100 0 {Tags:["world_spawn"]}

# Initialiser les scoreboards nécessaires
scoreboard objectives add academy_npcs dummy
scoreboard players set #minus_one academy_npcs -1

# Scoreboards pour le système de spawn intelligent
scoreboard objectives add spawn_attempts dummy
scoreboard objectives add found_surface dummy
scoreboard objectives add spawn_valid dummy
scoreboard objectives add space_count dummy
scoreboard objectives add surface_x dummy
scoreboard objectives add surface_y dummy
scoreboard objectives add surface_z dummy

# Scoreboards pour le système de combat et post-combat
scoreboard objectives add battle_check_timer dummy
scoreboard objectives add post_battle_timer dummy
scoreboard objectives add battle_player_id dummy
scoreboard objectives add player_id dummy

tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Système de zones initialisé !","color":"green"}]