<?php
// $bestFootBallPlayer="Cristiono Ronaldo";
// echo "Le meilleur joueur de foot au monde est :".$bestFootBallPlayer;
function findSmallestInterval($numbers) {
    sort($numbers);  // Trier les nombres dans l'ordre croissant
    $smallestInterval = PHP_INT_MAX;  // Initialiser le plus petit intervalle à la plus grande valeur possible
    for ($i = 1; $i < count($numbers); $i++) {
        $interval = $numbers[$i] - $numbers[$i - 1];  // Calculer l'intervalle entre deux éléments consécutifs
        if ($interval < $smallestInterval) {  // Si l'intervalle est plus petit que le plus petit intervalle actuel
            $smallestInterval = $interval;  // Mettre à jour le plus petit intervalle
        }
    }
    return $smallestInterval;
}

?>