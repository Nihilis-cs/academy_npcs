# Despawn propre d'un dresseur
# Effets visuels et nettoyage

# Effets de disparition
particle minecraft:cloud ~ ~1 ~ 0.5 1 0.5 0.1 30
playsound minecraft:entity.villager.no neutral @a[distance=..10] ~ ~ ~ 1 0.8

# Message d'au revoir (optionnel)
execute if entity @a[distance=..15] run tellraw @a[distance=..15] [{"text":"[","color":"gray"},{"nbt":"CustomName","entity":"@s"},{"text":"] ","color":"gray"},{"text":"À bientôt pour un autre combat !","color":"yellow"}]

# Supprimer l'entité
kill @s