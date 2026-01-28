# Affichage du dialogue et proposition de combat
# Exécuté par le dresseur PNJ

# Éviter les spams de dialogue
scoreboard objectives add dialogue_cooldown dummy
execute if score @s dialogue_cooldown matches 1.. run return 0
scoreboard players set @s dialogue_cooldown 100

# Obtenir un message aléatoire selon la zone
execute store result score #dialogue_random academy_npcs run random value 0..2

# Afficher le dialogue selon la zone
execute if entity @s[tag=zone_1,scores={dialogue_random=0}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"green"},{"text":"] ","color":"gray"},{"text":"Salut ! Je débute comme dresseur, veux-tu un combat ?","color":"white"}]
execute if entity @s[tag=zone_1,scores={dialogue_random=1}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"green"},{"text":"] ","color":"gray"},{"text":"Hey ! Un combat pour s'entraîner ?","color":"white"}]
execute if entity @s[tag=zone_1,scores={dialogue_random=2}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"green"},{"text":"] ","color":"gray"},{"text":"Bonjour ! Tu as l'air d'être un bon dresseur !","color":"white"}]

execute if entity @s[tag=zone_2,scores={dialogue_random=0}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"yellow"},{"text":"] ","color":"gray"},{"text":"J'ai pas mal d'expérience, tu penses pouvoir me battre ?","color":"white"}]
execute if entity @s[tag=zone_2,scores={dialogue_random=1}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"yellow"},{"text":"] ","color":"gray"},{"text":"Un duel ? J'ai hâte de voir ta stratégie !","color":"white"}]
execute if entity @s[tag=zone_2,scores={dialogue_random=2}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"yellow"},{"text":"] ","color":"gray"},{"text":"Mes Pokémon et moi, on forme une vraie équipe !","color":"white"}]

execute if entity @s[tag=zone_3,scores={dialogue_random=0}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"red"},{"text":"] ","color":"gray"},{"text":"Je m'entraîne dur depuis des années. Prêt pour un vrai défi ?","color":"white"}]
execute if entity @s[tag=zone_3,scores={dialogue_random=1}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"red"},{"text":"] ","color":"gray"},{"text":"Peu de dresseurs arrivent jusqu'ici. Impressionnant !","color":"white"}]
execute if entity @s[tag=zone_3,scores={dialogue_random=2}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"red"},{"text":"] ","color":"gray"},{"text":"Tu sens cette aura ? Mes Pokémon sont vraiment puissants !","color":"white"}]

execute if entity @s[tag=zone_4,scores={dialogue_random=0}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"dark_purple"},{"text":"] ","color":"gray"},{"text":"Tu as fait un long chemin pour arriver ici...","color":"white"}]
execute if entity @s[tag=zone_4,scores={dialogue_random=1}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"dark_purple"},{"text":"] ","color":"gray"},{"text":"Seuls les vrais maîtres osent me défier !","color":"white"}]
execute if entity @s[tag=zone_4,scores={dialogue_random=2}] run tellraw @a[distance=..10] [{"text":"[","color":"gray"},{"nbt":"data.selected_team.name","entity":"@s","color":"dark_purple"},{"text":"] ","color":"gray"},{"text":"Mes Pokémon légendaires n'ont peur de personne !","color":"white"}]

# Proposer le combat (bouton cliquable)
tellraw @a[distance=..10] [{"text":"","color":"gray"},{"text":"[","color":"gray"},{"text":"ACCEPTER LE COMBAT","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function academy_npcs:trainer/start_battle"},"hoverEvent":{"action":"show_text","contents":"Cliquez pour commencer le combat !"}},{"text":"]","color":"gray"}]

# Effets sonores
playsound minecraft:entity.villager.ambient neutral @a[distance=..10] ~ ~ ~ 1 1