<?php
//Variables 
$nombreDeTourDeBoucleWhile = 10; $nombreDeTourDeBoucleDoWhile = 10;
//Boucle while
while($nombreDeTourDeBoucleWhile <= 10)
{
echo $nombreDeTourDeBoucle . "Je m'exécute dans un while";
$nombreDeTourDeBoucleWhile++;
}

//Boucle do... while
do
{
echo $nombreDeTourDeBoucleDoWhile . "Je m'exécute dans un do while";
$nombreDeTourDeBoucleDoWhile++;
}
while($nombreDeTourDeBoucleDoWhile <= 10);

//Boucle for
for ($nombreDeTourDeBoucleFor = 10; $nombreDeTourDeBoucleFor <= 10; $nombreDeTourDeBoucleFor++)
{
echo $nombreDeTourDeBoucleFor . "Je m'exécute dans un for";
}


?>