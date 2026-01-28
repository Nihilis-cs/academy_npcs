# Fonction de détection de zone basée sur la distance du spawn
# Calcule la distance 3D du spawn et assigne une zone

# Récupérer la position du spawn mondial
execute store result score #spawn_x academy_npcs run data get entity @e[type=minecraft:marker,tag=world_spawn,limit=1] Pos[0]
execute store result score #spawn_z academy_npcs run data get entity @e[type=minecraft:marker,tag=world_spawn,limit=1] Pos[2]

# Si le marker de spawn n'existe pas, on considère 0,0 comme spawn
execute unless entity @e[type=minecraft:marker,tag=world_spawn] run scoreboard players set #spawn_x academy_npcs 0
execute unless entity @e[type=minecraft:marker,tag=world_spawn] run scoreboard players set #spawn_z academy_npcs 0

# Calculer la position actuelle du joueur/entité
execute store result score #pos_x academy_npcs run data get entity @s Pos[0]
execute store result score #pos_z academy_npcs run data get entity @s Pos[2]

# Calculer les différences
scoreboard players operation #diff_x academy_npcs = #pos_x academy_npcs
scoreboard players operation #diff_x academy_npcs -= #spawn_x academy_npcs
scoreboard players operation #diff_z academy_npcs = #pos_z academy_npcs
scoreboard players operation #diff_z academy_npcs -= #spawn_z academy_npcs

# Valeur absolue (distance toujours positive)
execute if score #diff_x academy_npcs matches ..-1 run scoreboard players operation #diff_x academy_npcs *= #minus_one academy_npcs
execute if score #diff_z academy_npcs matches ..-1 run scoreboard players operation #diff_z academy_npcs *= #minus_one academy_npcs

# Calculer la distance approximative (max des deux coordonnées)
scoreboard players operation #distance academy_npcs = #diff_x academy_npcs
execute if score #diff_z academy_npcs > #distance academy_npcs run scoreboard players operation #distance academy_npcs = #diff_z academy_npcs

# Assigner la zone selon la distance
tag @s remove zone_1
tag @s remove zone_2
tag @s remove zone_3
tag @s remove zone_4

execute if score #distance academy_npcs matches ..500 run tag @s add zone_1
execute if score #distance academy_npcs matches 501..2000 run tag @s add zone_2
execute if score #distance academy_npcs matches 2001..5000 run tag @s add zone_3
execute if score #distance academy_npcs matches 5001.. run tag @s add zone_4

# Stocker la zone détectée
execute if entity @s[tag=zone_1] run data modify entity @s data.zone set value "zone_1"
execute if entity @s[tag=zone_2] run data modify entity @s data.zone set value "zone_2"
execute if entity @s[tag=zone_3] run data modify entity @s data.zone set value "zone_3"
execute if entity @s[tag=zone_4] run data modify entity @s data.zone set value "zone_4"