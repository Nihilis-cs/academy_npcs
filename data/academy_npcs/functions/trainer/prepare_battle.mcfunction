# Préparation du combat - Configuration de l'équipe du dresseur
# Exécuté par le dresseur PNJ pour préparer son équipe

# Afficher l'équipe du dresseur (pour debug et information)
tellraw @a[distance=..15] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"green"},{"text":"] ","color":"gray"},{"text":"Mon équipe: ","color":"white"},{"nbt":"data.selected_team.pokemon","entity":"@s","color":"aqua"}]

# Intégration avec Cobblemon 1.6 - Commandes mises à jour
# Le combat sera initié par start_battle.mcfunction avec les nouvelles commandes

# Afficher l'équipe pour information
tellraw @a[distance=..15] [{"text":"[Dresseur] ","color":"blue"},{"text":"Voici mon équipe : ","color":"white"},{"nbt":"data.selected_team.pokemon","entity":"@s","color":"aqua"}]

# Marquer le dresseur comme prêt au combat
tag @s add battle_ready

# Message de préparation
tellraw @a[distance=..15] [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Le dresseur prépare ses Pokémon pour le combat !","color":"yellow"}]

# Marquer le dresseur comme en combat
tag @s add in_battle
tag @s remove post_battle
scoreboard players set @s dialogue_cooldown 6000
scoreboard players set @s battle_check_timer 100

# Stocker l'ID du joueur qui combat (pour vérifier la fin)
execute as @p[distance=..10] run scoreboard players operation @e[type=villager,tag=in_battle,distance=..5,limit=1] battle_player_id = @s player_id

# Effets visuels
particle minecraft:flame ~ ~2 ~ 1 1 1 0.1 50
playsound minecraft:entity.ender_dragon.growl neutral @a[distance=..20] ~ ~ ~ 2 1