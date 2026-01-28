# Démarrage du dialogue avec un dresseur
# Exécuté par un joueur près d'un dresseur

# Trouver le dresseur le plus proche
execute as @e[type=villager,tag=pokemon_trainer,distance=..5,limit=1,sort=nearest] run function academy_npcs:trainer/show_dialogue