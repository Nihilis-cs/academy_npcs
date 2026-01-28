# Démarrage d'un combat Pokémon
# Interface avec Cobblemon pour lancer un combat contre l'équipe du dresseur

# Récupérer l'équipe du dresseur le plus proche
execute as @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest] run function academy_npcs:trainer/prepare_battle

# Message de début de combat
tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Combat en préparation...","color":"yellow"}]

# Note: Cette fonction doit être adaptée selon l'API de Cobblemon
# Pour l'instant, on simule le démarrage du combat