<?php

do
{
	$user=readline(("Entrez votre nom ici !"));
	
    if(strlen($user)<4)
	{
		echo $user . "Votre nom est trop petit !";
	}
	else if (strlen($user)>7)
    {
        echo "Votre nom est trop grand !";
    }
} while((strlen($user)<4) || (strlen($user)>10));

do
{
   $passWord=readfile("Entrez votre mot de passe ici !");

   if(strlen($passWord)<8)
   {
    echo $passWord . "Votre mot de passe trop petit; recommencez"."\n";
   }
   else 
   {
    echo "Donnez enregistrée !";
   }
}
// do
// {
// 	$passWord=readine(("Entrez votre mot de passe ici !"));
// 	if(strlen($passWord)<8)
// 	{
// 		echo $passWord . "Mot de passe trop petit recommencez"."\n";
// 		$passWord++
// 	}
// 	while($passWord) echo "Donnée enregistrée"."\n";
// 		return $passWord;
	

// }

// function Bouclerace()
// {
// 	$race = readline("Choisissez votre type de personnage en tapant :"."\n"."	1 pour humain"."\n". "2 pour Alien". "\n". "3 pour Hobbit,"."\n"." 4 pour Dinosaur,"."\n". "ou 5 pour Humain à 4 bras ");

// 	switch ($race)
// 	{
// 		case 1 : 
// 		$race = "Humain";
// 		break;
// 		case 2 :
// 		$race ="Alien";
// 		break;
// 		case 3 :
// 		$race = "Hobbit";
// 		break;
// 		case 4 :
// 		$race = "Dinosaur";
// 		break;
// 		case 5 :
// 		$race = "Humain à 4 bras";
// 		break;
// 		default: 
// 		echo "Veuillez choisir le bon nombre de personnage !";
// 		Bouclerace();
// 		break;
// 	}
// 	echo "Donnée enregistrée";
// 	return $race;
// }
// function Boucleclasse()
// {
// 	$classe = readline("Choisissez votre type de personnage en tapant : \n". "A pour Agilité". "\n". "B pour Charismatique,"."\n"." C pour Intélligence,"."\n". "D pour Fatalité"."\n". "E pour Finisher");
	
// 	switch ($classe)
// 	{
// 		case 1 : 
// 		$classe = "Agilité";
// 		break;
// 		case 2 :
// 		$classe ="Charisme";
// 		break;
// 		case 3 :
// 		$classe = "Intéligence";
// 		break;
// 		case 4 :
// 		$classe = "Force";
// 		break;
// 		case 5 :
// 		$classe = "Finisher";
// 		break;
// 		default:
// 		echo "Veuillez choisir le bon nombre de personnage !";
// 		Boucleclasse();
// 		break;
// 	}
// 	echo "Donnée enregistrée";
// 	return $classe;
// }

// $username = Boucleuser();
// $password = Bouclepass();
// $race = Bouclerace();
// $classe= Boucleclasse();

// function Bouclepoint();
// $point = readline("Choisissez de 1 à 10 points pour attribuer à votre")
// {
   
// }



// // FonctionRecursive(3,18);
// 1 boucle do while
// 2 do while
// 3 switch do while
// 4 switch do while
// 5  boucle do while dens une for

// // function FonctionRecursive($_nbr,$_limit)
// // {
// //     echo($_nbr."\n");
// //     if ($_nbr<$_limit)
// //     {
// //         $_nbr++;
// //         FonctionRecursive($_nbr,$_limit);
// //     }
// //     else
// //     {
// //         echo ("J'ai fini");
// //     }
// //}
?>