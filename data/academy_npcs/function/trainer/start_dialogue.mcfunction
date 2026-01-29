# Démarrage du dialogue avec un dresseur
# Exécuté par un joueur près d'un dresseur

# Vérifier que le joueur n'est pas en cooldown
execute if score @s interact_time matches 1.. run return 0

# Ajouter un cooldown au joueur pour éviter les spams
scoreboard players set @s interact_time 40

# Trouver le dresseur le plus proche et vérifier qu'il n'est pas en cooldown
execute as @e[type=villager,tag=pokemon_trainer,distance=..5,limit=1,sort=nearest] unless score @s dialogue_cooldown matches 1.. run function academy_npcs:trainer/utils/show_dialogue

# Message si le dresseur est en cooldown
execute as @e[type=villager,tag=pokemon_trainer,distance=..5,limit=1,sort=nearest] if score @s dialogue_cooldown matches 1.. run tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Ce dresseur est occupé, attendez un peu...","color":"yellow"}]