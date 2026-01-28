# ========================================
# CONFIGURATION DES ÉQUIPES POKÉMON
# ========================================
# 
# Instructions :
# - Modifiez les équipes ci-dessous selon vos besoins
# - Chaque zone a ses propres équipes équilibrées
# - Format : /data modify storage academy_npcs:teams zone_X append value {name:"Nom", pokemon:["pokemon1","pokemon2",...]}
# 
# Zone 1 (0-500 blocs du spawn) - Équipes débutant
data modify storage academy_npcs:teams zone_1 set value []
data modify storage academy_npcs:teams zone_1 append value {name:"Dresseur Novice Lucas", pokemon:["caterpie","weedle","pidgey"]}
data modify storage academy_npcs:teams zone_1 append value {name:"Campeuse Marie", pokemon:["rattata","spearow","nidoran_f"]}
data modify storage academy_npcs:teams zone_1 append value {name:"Scout Pierre", pokemon:["geodude","onix","machop"]}
data modify storage academy_npcs:teams zone_1 append value {name:"Éleveuse Sarah", pokemon:["oddish","bellsprout","bulbasaur"]}
data modify storage academy_npcs:teams zone_1 append value {name:"Nageur Tom", pokemon:["magikarp","psyduck","squirtle"]}

# Zone 2 (500-2000 blocs) - Équipes intermédiaires
data modify storage academy_npcs:teams zone_2 set value []
data modify storage academy_npcs:teams zone_2 append value {name:"Montagnard Alex", pokemon:["graveler","machoke","golem"]}
data modify storage academy_npcs:teams zone_2 append value {name:"Exploratrice Luna", pokemon:["ivysaur","weepinbell","gloom","parasect"]}
data modify storage academy_npcs:teams zone_2 append value {name:"Pêcheur Bob", pokemon:["gyarados","golduck","starmie","tentacruel"]}
data modify storage academy_npcs:teams zone_2 append value {name:"Karatéka Jin", pokemon:["hitmonlee","hitmonchan","machamp","primeape"]}
data modify storage academy_npcs:teams zone_2 append value {name:"Ornithologue Anna", pokemon:["pidgeot","fearow","dodrio","aerodactyl"]}

# Zone 3 (2000-5000 blocs) - Équipes avancées
data modify storage academy_npcs:teams zone_3 set value []
data modify storage academy_npcs:teams zone_3 append value {name:"Expert Vulcain", pokemon:["arcanine","rapidash","flareon","magmar","charizard"]}
data modify storage academy_npcs:teams zone_3 append value {name:"Maître Psychique Zen", pokemon:["alakazam","hypno","jynx","mr_mime","mewtwo"]}
data modify storage academy_npcs:teams zone_3 append value {name:"Dompteur Dragon Kane", pokemon:["dragonite","gyarados","charizard","aerodactyl","lapras"]}
data modify storage academy_npcs:teams zone_3 append value {name:"Électricienne Spark", pokemon:["raichu","jolteon","magnezone","electrode","zapdos"]}
data modify storage academy_npcs:teams zone_3 append value {name:"Glaciaire Frost", pokemon:["lapras","articuno","jynx","cloyster","dewgong"]}

# Zone 4 (5000+ blocs) - Équipes légendaires
data modify storage academy_npcs:teams zone_4 set value []
data modify storage academy_npcs:teams zone_4 append value {name:"Champion Rouge", pokemon:["pikachu","charizard","blastoise","venusaur","snorlax","dragonite"]}
data modify storage academy_npcs:teams zone_4 append value {name:"Maître Lance", pokemon:["dragonite","dragonite","dragonite","aerodactyl","gyarados","charizard"]}
data modify storage academy_npcs:teams zone_4 append value {name:"Légende Mewtwo", pokemon:["mewtwo","mew","lugia","ho_oh","celebi","articuno"]}
data modify storage academy_npcs:teams zone_4 append value {name:"Gardien Arceus", pokemon:["arceus","dialga","palkia","giratina","rayquaza","kyogre"]}
data modify storage academy_npcs:teams zone_4 append value {name:"Ultime Blue", pokemon:["alakazam","machamp","gengar","tyranitar","metagross","garchomp"]}

# Configuration des messages de dialogue
data modify storage academy_npcs:dialogues zone_1 set value ["Salut ! Je débute comme dresseur, veux-tu un combat ?","Hey ! Un combat pour s'entraîner ?","Bonjour ! Tu as l'air d'être un bon dresseur !"]
data modify storage academy_npcs:dialogues zone_2 set value ["J'ai pas mal d'expérience, tu penses pouvoir me battre ?","Un duel ? J'ai hâte de voir ta stratégie !","Mes Pokémon et moi, on forme une vraie équipe !"]
data modify storage academy_npcs:dialogues zone_3 set value ["Je m'entraîne dur depuis des années. Prêt pour un vrai défi ?","Peu de dresseurs arrivent jusqu'ici. Impressionnant !","Tu sens cette aura ? Mes Pokémon sont vraiment puissants !"]
data modify storage academy_npcs:dialogues zone_4 set value ["Tu as fait un long chemin pour arriver ici...","Seuls les vrais maîtres osent me défier !","Mes Pokémon légendaires n'ont peur de personne !"]

tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Configuration des équipes chargée !","color":"green"}]