# Téléporte le joueur au dresseur le plus proche (fonction de debug)
# Exécuté par un joueur

# Vérifier s'il y a des dresseurs à proximité
execute unless entity @e[type=villager,tag=pokemon_trainer,distance=..100] run tellraw @s [{"text":"[DEBUG] ","color":"red"},{"text":"Aucun dresseur trouvé dans un rayon de 100 blocs.","color":"yellow"}]
execute unless entity @e[type=villager,tag=pokemon_trainer,distance=..100] run return 0

# Message de confirmation
tellraw @s [{"text":"[DEBUG] ","color":"green"},{"text":"Téléportation vers le dresseur le plus proche...","color":"white"}]

# Téléportation
execute as @e[type=villager,tag=pokemon_trainer,distance=..100,limit=1,sort=nearest] at @s run tp @p[distance=..100] ~ ~ ~ facing entity @s

# Afficher les coordonnées après téléportation
function academy_npcs:trainer/get_nearest_trainer_coords