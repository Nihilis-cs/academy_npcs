# Combat terminé - Transition vers la phase post-combat
# Prépare le dresseur pour le despawn

# Retirer le tag de combat et ajouter le tag post-combat
tag @s remove in_battle
tag @s add post_battle

# Initialiser le timer de despawn post-combat (configurable, par défaut 30 secondes)
scoreboard players operation @s post_battle_timer = #post_battle_delay academy_npcs
execute unless score #post_battle_delay academy_npcs matches 1.. run scoreboard players set @s post_battle_timer 600

# Message de fin de combat
execute if entity @a[distance=..15] run tellraw @a[distance=..15] [{"text":"[","color":"gray"},{"nbt":"CustomName","entity":"@s"},{"text":"] ","color":"gray"},{"text":"Quel combat ! Merci pour ce duel !","color":"yellow"}]

# Effets visuels de fin de combat
particle minecraft:heart ~ ~2 ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:entity.villager.celebrate neutral @a[distance=..15] ~ ~ ~ 1 1