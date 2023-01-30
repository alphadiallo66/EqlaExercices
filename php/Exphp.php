<?php


while(readline("Bonjour, veuillez entrez votre taille plus votre poids !"))
{
    $taille=readline("Voullez-vous entrez votre taille !");
    $poids=readline("Veuillez entrez votre poids !");
    $imc=$masse/($taille*$taille);
    echo $imc ;
    $content!="non";
    $MalNuttrition=(18.5-$imc)*$taille*$taille;
    $Obese=(30-$imc)*$taille*$taille;
    
    
    if($content=="non")
    {
        $taille=readline("Bonjour, veuillez entrez votre taille ?");
        $poids=readline("Bonjour, veuillez entrez votre poids ?");  
        echo $imc ;
    }


    else
    {
      $taille = readline("Quel est ta taille en m?");
      $masse = readline("Quel est ta masse en kg ?");
      $imc = $masse/($taille*$taille);

      if($imc<18.5)
        {
            echo "Vous êtes en malnutrition avec un imc de ".$imc;
        }
        else if ($imc<25)
        {
            echo "Vous êtes dans la norme avec un imc de ".$imc;
        }
        else if ($imc<30)
        {
            echo "Vous êtes en surpoids avec un imc de ".$imc;
        }
        else if ($imc<35)
        {
            echo "Vous êtes en obésité de classe 1 avec un imc de ".$imc;
        }
        else if ($imc<40)
        {
            echo "Vous êtes en obésité de classe 2 avec un imc de ".$imc;
        }
        else
        {
            echo "Attention vous êtes en obésité morbide avec un imc de ".$imc;
        }

        $concent = readline("Voulez recalculer l'imc ?");
    }

    echo "Au-revoir";
}






?>  