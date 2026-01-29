# Affiche les coordonnées XYZ du dresseur PNJ le plus proche (pour debug)
# Exécuté par un joueur

# Vérifier s'il y a des dresseurs à proximité
execute unless entity @e[type=villager,tag=pokemon_trainer,distance=..50] run tellraw @s [{"text":"[DEBUG] ","color":"red"},{"text":"Aucun dresseur trouvé dans un rayon de 50 blocs.","color":"yellow"}]
execute unless entity @e[type=villager,tag=pokemon_trainer,distance=..50] run return 0

# Stocker les coordonnées du dresseur le plus proche
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] run data modify storage academy_npcs:debug trainer_coords set value {x:0.0d,y:0.0d,z:0.0d}
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] store result storage academy_npcs:debug trainer_coords.x double 1 run data get entity @s Pos[0]
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] store result storage academy_npcs:debug trainer_coords.y double 1 run data get entity @s Pos[1]
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] store result storage academy_npcs:debug trainer_coords.z double 1 run data get entity @s Pos[2]

# Afficher les informations du dresseur
tellraw @s [{"text":"[DEBUG] ","color":"green"},{"text":"Dresseur le plus proche :","color":"white"}]

# Afficher le nom du dresseur
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] run tellraw @s [{"text":"  Nom: ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"aqua"}]

# Afficher les coordonnées
function academy_npcs:trainer/utils/display_trainer_coords with storage academy_npcs:debug trainer_coords

# Afficher la distance
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] run tellraw @s [{"text":"  Distance: ","color":"gray"},{"score":{"name":"@s","objective":"academy_npcs"},"color":"yellow"},{"text":" blocs","color":"gray"}]

# Afficher l'état actuel
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] if entity @s[tag=in_battle] run tellraw @s [{"text":"  État: ","color":"gray"},{"text":"EN COMBAT","color":"red","bold":true}]
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] if entity @s[tag=post_battle] run tellraw @s [{"text":"  État: ","color":"gray"},{"text":"POST-COMBAT","color":"orange"}]
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] unless entity @s[tag=in_battle] unless entity @s[tag=post_battle] run tellraw @s [{"text":"  État: ","color":"gray"},{"text":"DISPONIBLE","color":"green"}]

# Afficher les tags pour debug avancé
execute as @e[type=villager,tag=pokemon_trainer,distance=..50,limit=1,sort=nearest] run tellraw @s [{"text":"  Tags: ","color":"gray"},{"nbt":"Tags","entity":"@s","color":"dark_gray"}]

# Bouton pour téléportation (debug)
tellraw @s [{"text":"[TELEPORT] ","color":"blue","clickEvent":{"action":"run_command","value":"/function academy_npcs:trainer/teleport_to_nearest"},"hoverEvent":{"action":"show_text","contents":"Cliquez pour vous téléporter au dresseur"}},{"text":"← Se téléporter au dresseur","color":"white"}]