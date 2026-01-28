# Initialisation d'un nouveau dresseur
# Définit sa zone, sélectionne son équipe et configure son comportement

# Retirer le tag temporaire
tag @s remove new_trainer

# Détecter la zone basée sur la position
function academy_npcs:zones/detect_zone

# Sélectionner une équipe aléatoire selon la zone
function academy_npcs:trainer/select_team

# Ajouter des scores pour les interactions
scoreboard players set @s academy_npcs 0
scoreboard players set @s[tag=zone_1] academy_npcs 1
scoreboard players set @s[tag=zone_2] academy_npcs 2
scoreboard players set @s[tag=zone_3] academy_npcs 3
scoreboard players set @s[tag=zone_4] academy_npcs 4

# Configurer l'apparence et le comportement
data modify entity @s NoAI set value 0b
data modify entity @s Silent set value 0b

# Définir une durée de vie (despawn après 30 minutes si pas de joueurs près)
scoreboard objectives add trainer_lifetime dummy
scoreboard players set @s trainer_lifetime 36000

# Particules d'apparition
particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 20