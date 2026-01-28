# Initialiser le système de zones
# Créer le marker de spawn si nécessaire

# Marquer le spawn mondial à 0,0 si pas déjà fait
execute unless entity @e[type=minecraft:marker,tag=world_spawn] run summon minecraft:marker 0 100 0 {Tags:["world_spawn"]}

# Initialiser les scoreboards nécessaires
scoreboard objectives add academy_npcs dummy
scoreboard players set #minus_one academy_npcs -1

tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Système de zones initialisé !","color":"green"}]