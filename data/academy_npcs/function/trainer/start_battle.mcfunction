# Démarrage d'un combat Pokémon
# Interface avec Cobblemon pour lancer un combat contre l'équipe du dresseur

# Vérifier qu'il y a bien un dresseur à proximité
execute unless entity @e[type=villager,tag=pokemon_trainer,distance=..10] run tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Aucun dresseur trouvé à proximité !","color":"red"}]
execute unless entity @e[type=villager,tag=pokemon_trainer,distance=..10] run return 0

# Récupérer l'équipe du dresseur le plus proche
execute as @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest] run function academy_npcs:trainer/utils/prepare_battle

# Message de début de combat
tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Combat en cours de démarrage...","color":"yellow"}]

# COBBLEMON 1.6 - Commandes de combat mises à jour
# Marquer les entités en combat
tag @s add in_battle
tag @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1] add in_battle

# Stocker l'UUID du dresseur pour référence
execute store result score @s academy_npcs run data get entity @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest] UUID[0]

# Démarrer le combat avec Cobblemon 1.6
execute as @s at @s run cobblemon battle @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]

# Alternative pour Cobblemon 1.6 si la première commande ne fonctionne pas:
# execute as @s at @s run cobblemon trainer battle @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]

# Message de confirmation
tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Combat initié avec le dresseur !","color":"green"}]