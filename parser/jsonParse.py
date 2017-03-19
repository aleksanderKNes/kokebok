import json
import os #for working dir
import re #regexp

data = {}
data['recipie'] = []

data['recipie'].append({
    'name': 'Fiskepinner',
    'portions': '4',
    'ingredients': 'Salt og pepper'
})


#open tex for writing
os.getcwd()
inputFile = open("guacamole.tex", "r")

#read lines into list
lines = inputFile.readlines()

#strip whitespace, newlines
lines = [x.strip() for x in lines]


with open('data.json', 'w') as outfile:
    json.dump(data, outfile)

# Finn linjen med section
# \\section{*}

#Dette vil jeg gjøre:
#åpne fil
# parse: \section{x} -> name = x
# \label -> ignorer
# x porsjoner -> portions = x
# \paragraph{Ingredienser}
# for item in \begin{itemize}
    # item[i] = ingredients[i]
    # if \end{itemize} then
        # ferdig med Ingredienser
# \paragraph{Framgangsmåte}
# for item in \begin{enumerate}
    # item[i] = steps[i]
    # if \end{enumerate} then
        # ferdig med framgangsmåte
# lagre




# {
#     "name" : "Fiskepinner",
#     "portions" : 4,
#     "ingredients" : [
#             "Salt og pepper",
#             "2 stk avokado",
#             "500 gram kyllingfilet",
#         },
#     ],
#     "steps" : [
#         "Skjær torsken i ca 2cm brede strimLer",
#         "Bland hvetemel, salt og pepper i en vid skål",
#         "Pisk sammen egg og melk i en annen skål",
#     ],
# }
