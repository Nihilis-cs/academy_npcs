# Préparation du combat - Configuration de l'équipe du dresseur
# Exécuté par le dresseur PNJ pour préparer son équipe

# Afficher l'équipe du dresseur (pour debug et information)
tellraw @a[distance=..15] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"green"},{"text":"] ","color":"gray"},{"text":"Mon équipe: ","color":"white"},{"nbt":"data.selected_team.pokemon","entity":"@s","color":"aqua"}]

# Ici on pourrait utiliser l'API Cobblemon pour:
# 1. Créer les Pokémon du dresseur selon son équipe
# 2. Les assigner au dresseur
# 3. Démarrer le combat automatiquement

# Commandes Cobblemon (à adapter selon la vraie API):
# /cobblemon spawn pokemon_name level_range
# /cobblemon battle start @s @p

# Marquer le dresseur comme en combat
tag @s add in_battle
scoreboard players set @s dialogue_cooldown 6000

# Effets visuels
particle minecraft:flame ~ ~2 ~ 1 1 1 0.1 50
playsound minecraft:entity.ender_dragon.growl neutral @a[distance=..20] ~ ~ ~ 2 1