# Spawn manuel d'un dresseur
# Utilisable par les admins pour tester ou forcer un spawn

# Spawn un dresseur à la position du joueur qui exécute la commande
execute as @s at @s run summon villager ~ ~ ~ {Tags:["pokemon_trainer","new_trainer"],Brain:{memories:{}},Attributes:[{Name:"generic.movement_speed",Base:0.0}],PersistenceRequired:1b,VillagerData:{profession:"minecraft:nitwit",level:1,type:"minecraft:plains"},data:{}}

# Initialiser le dresseur
execute as @e[type=villager,tag=new_trainer,distance=..5,limit=1] run function academy_npcs:trainer/init_trainer

tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Dresseur spawné manuellement !","color":"green"}]