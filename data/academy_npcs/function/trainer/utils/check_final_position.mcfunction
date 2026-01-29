# Vérifications finales à la position
# Exécuté à la position de spawn potentielle

# Vérifier que le bloc du dessous est solide et approprié
execute unless block ~ ~-1 ~ #academy_npcs:solid_blocks run return 0

# Vérifier qu'il n'y a pas d'eau ou de lave
execute if block ~ ~ ~ water run return 0
execute if block ~ ~ ~ lava run return 0
execute if block ~ ~1 ~ water run return 0
execute if block ~ ~1 ~ lava run return 0

# Vérifier qu'on n'est pas dans un arbre (feuilles au-dessus)
execute if block ~ ~2 ~ #minecraft:leaves run return 0
execute if block ~ ~3 ~ #minecraft:leaves run return 0

# Vérifier qu'on n'est pas trop près d'un autre dresseur
execute if entity @e[type=villager,tag=pokemon_trainer,distance=..15] run return 0

# Vérifier qu'on a de l'espace autour (pas enclavé)
scoreboard players set #space_count academy_npcs 0
execute if block ~1 ~ ~ #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1
execute if block ~-1 ~ ~ #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1
execute if block ~ ~ ~1 #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1
execute if block ~ ~ ~-1 #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1

# Il faut au moins 2 côtés libres
execute if score #space_count academy_npcs matches ..1 run return 0

# Si toutes les vérifications passent, marquer comme valide
scoreboard players set #spawn_valid academy_npcs 1