# Démarrage d'un combat Pokémon
# Interface avec Cobblemon pour lancer un combat contre l'équipe du dresseur

# Récupérer l'équipe du dresseur le plus proche
execute as @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest] run function academy_npcs:trainer/prepare_battle

# Message de début de combat
tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Combat en cours de démarrage...","color":"yellow"}]

# COBBLEMON 1.6 - Commandes de combat mises à jour
# Marquer les entités en combat
tag @s add in_battle
tag @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1] add in_battle

# Démarrer le combat avec Cobblemon 1.6
execute as @s run cobblemon battle @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]

# Alternative pour Cobblemon 1.6 si la première commande ne fonctionne pas:
# cobblemon trainer battle @e[tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]

# Message de confirmation
tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Combat initié avec le dresseur !","color":"green"}]