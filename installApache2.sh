#!/bin/bash
echo "verification d'existance d'apache"
ps aux | grep apach[e]
check=$?
echo $check
if [[ "$check" != "0" ]]
then
        echo "apache n'est pas installé"
        # lire saisi user en clair
        read -p "Tu veux installer Apache ?:Y=Yes or N=No " -n 1 choixInstall
        choixInstall=${choixInstall^}
        echo
        if [[ "$choixInstall" == "Y" ]]
        then
                read -p " Nous allons installer Apache aprés votre confirmation:Y(yes) or N(No)" confirmChoix
                confirmChoix=${confirmChoix^}
                if [[ "$confirmChoix" == "Y" ]]
                then
                    echo "installation en cours ...."
                    sudo apt-get install apache2
                else
                    echo "au revoir "
                fi
        else
                echo "Bye Bye"
        fi
else
        echo " apache existe déja voici ces process : "
        echo "============================================================================================================"
        ps aux | grep apach[e]

fi