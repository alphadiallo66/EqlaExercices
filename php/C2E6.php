<?php
$user=readline("Tapez un mot"."\n");
if(strlen($user)==0) 
{
    echo "Te fou pas de moi mec";
}
else if (strlen($user)%2==0)
{
    $premiereLettre=(substr($user, 0,1));
    $derniereLettre=(substr($user, -1));
    echo"votre mots est pair \n"."Votre prémière lettre est ".$premiereLettre. "\n Votre dernière lettre est ".$derniereLettre." ";
   detecteur($premiereLettre);
   detecteur($derniereLettre);
}
else 
{
    $lettreMillieu= substr($user, (strlen($user)-1)/2,1);

    echo " Votre mots est impair"."\n Votre lettre du millieu est ".$lettreMillieu;
   detecteur($lettreMillieu);
}
function detecteur($_lettre)
{
    if ($_lettre=="a"||$_lettre=="e" || $_lettre=="o" || $_lettre=="u" || $_lettre=="i"|| $_lettre=="y")
{
    echo"Votre lettre " .$_lettre ." est une voyelle";
}
else
{
    echo"Votre lettre " .$_lettre ." est une consonne";
}
}
?>