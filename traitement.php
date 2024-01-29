<?php
    include('./bdd.php');

    $database = dataBasePDO();
    $data = null;

    // Je récupère les données du formulaire d'ajout d'une œuvre via $_POST
    if (isset($_POST)) {
        $data = $_POST;
    } else {
        header('Location: ajouter.php');
    }

    // Je vérifie que les données sont présentes, valides et sûres (XSS)
    if (isset($data['title'])
        && isset($data['artist'])
        && isset($data['image'])
        && isset($data['description'])) {

        if (!empty($data['title'])
            && !empty($data['artist'])
            && !empty($data['image'])
            && filter_var($data['image'],FILTER_VALIDATE_URL)
            && !empty($data['description'])
            && (strlen($data['description']) > 2)) {
            // Si les données sont présentes, valides et sûres, je les insère dans la base de données comme suit ;
            $oeuvre = [
                'title' => htmlentities(trim($data['title'])),
                'artist' => htmlentities(trim($data['artist'])),
                'image' => htmlentities(trim($data['image'])),
                'description' => htmlentities(trim($data['description']))
            ];

            $query = $database->prepare('INSERT INTO oeuvre (title, artist, image, description) VALUES (:title, :artist, :image, :description)');
            $query->execute($oeuvre);

            // Correction, renvoyer l'utilisateur vers la nouvelle œuvre créée
            header('Location: oeuvre.php?id=' . $database->lastInsertId());

        } else {
            header('Location: ajouter.php');
        }

    } else {
        header('Location: ajouter.php');
    }
