# Gestion de la phase post-combat
# Countdown vers le despawn automatique

# Décrémenter le timer post-combat
scoreboard players remove @s post_battle_timer 1

# Avertissements avant despawn
execute if score @s post_battle_timer matches 200 if entity @a[distance=..15] run tellraw @a[distance=..15] [{"text":"[","color":"gray"},{"nbt":"CustomName","entity":"@s"},{"text":"] ","color":"gray"},{"text":"Je vais bientôt partir chercher de nouveaux défis...","color":"gold"}]
execute if score @s post_battle_timer matches 100 if entity @a[distance=..15] run tellraw @a[distance=..15] [{"text":"[","color":"gray"},{"nbt":"CustomName","entity":"@s"},{"text":"] ","color":"gray"},{"text":"À bientôt pour un nouveau combat !","color":"yellow"}]

# Effets visuels d'avertissement
execute if score @s post_battle_timer matches 200 run particle minecraft:cloud ~ ~1 ~ 0.3 0.5 0.3 0.05 15
execute if score @s post_battle_timer matches 100 run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 25

# Despawn quand le timer atteint zéro
execute if score @s post_battle_timer matches ..0 run function academy_npcs:trainer/despawn_trainer