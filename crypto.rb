#remplacer chaque char par une correspondance 3 lettres plus loins dans ascii
                                                    #65-90 maj | 97 - 122 min
#gerer les espaces

def chiffre_de_cesar(string, nb)
    puts "output expected = Bmfy f xywnsl!"
    i = 0
    tab = []
# le modulo permet de gerer les cas ou nb serait superieur a une remise a zero
    if nb > 26
        nb = nb % 26
    end
#parcourir une chaine de caractère
    while i < string.size
        #conversion de chaque char en ascii
        tab[i] = string[i].ord
        #cas de 'A' à 'Z' et 'a' à 'z'
        if (tab[i] >= 65 && tab[i] <= 90) || (tab[i] >= 97 && tab[i] <= 122)
                tab[i] += nb
            # cas de transition quand le nb dépasse de la condition pour boucler
            if (tab[i] > 90 && tab[i] < 97) || tab[i] > 122
                tab[i] -= 26
            end
        end
        #transformation de la valeur ascii en caractère
        tab[i] = tab[i].chr
        i += 1
    end
    #retourne le contenu entier du tableau aprés retraduction en string
    return tab.join
end

print chiffre_de_cesar("what the fuck ?", 27)
