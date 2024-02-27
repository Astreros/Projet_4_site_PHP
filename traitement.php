<?php
    session_start();
    include('./bdd.php');

    $database = dataBasePDO();
    function validateDataOeuvre(string $title, string $artist, string $image, string $description): array
    {
        $errors = [];

        if (!preg_match('/^[\p{L}\p{N}\p{P}\p{S}\p{Z}]{3,32}$/u', $title)) {
            $errors['title'] = "Format du titre invalide. 3 à 32 caractères (UTF-8). ";
        }

        if (!preg_match('/^[\p{L}\p{N}\p{P}\p{S}\p{Z}]{3,32}$/u', $artist)) {
            $errors['artist'] = "Format du nom d'artiste invalide. 3 à 32 caractères (UTF-8).";
        }

        if (!filter_var($image, FILTER_VALIDATE_URL)) {
            $errors['image'] = "Format d'URL invalide.";
        }

        if (!preg_match('/^[\p{L}\p{N}\p{P}\p{S}\p{Z}]{3,500}$/u', $description)) {
            $errors['description'] = "Format de description invalide. 2 à 500 caractères (UTF-8).";
        }

        return $errors;
    }

    // Je récupère les données du formulaire d'ajout d'une œuvre via $_POST
    if (isset($_POST['title'], $_POST['artist'], $_POST['image'], $_POST['description'])) {
        $data = $_POST;

        $title = strip_tags($data['title']);
        $artist = strip_tags($data['artist']);
        $image = strip_tags($data['image']);
        $description = strip_tags($data['description']);

        $_SESSION['tempData'] = [
            'title' => htmlspecialchars($title, ENT_QUOTES),
            'artist' => htmlspecialchars($artist, ENT_QUOTES),
            'image' => htmlspecialchars($image, ENT_QUOTES),
            'description' => htmlspecialchars($description, ENT_QUOTES)
        ];



        if (empty($title) || empty($artist) || empty($image) || empty($description)) {

            $_SESSION['emptyError'] = "Tous les champs sont obligatoires.";

            header('Location: ajouter.php');

            exit();
        }

        $errors = validateDataOeuvre($title, $artist, $image, $description);

        if (count($errors) > 0) {

            $_SESSION['errors'] = $errors;

            header('Location: ajouter.php');

            exit();
        }

        $oeuvre = [
            'title' => $_SESSION['tempData']['title'],
            'artist' => $_SESSION['tempData']['artist'],
            'image' => $_SESSION['tempData']['image'],
            'description' => $_SESSION['tempData']['description']
        ];

        $query = $database->prepare('INSERT INTO oeuvre (title, artist, image, description) VALUES (:title, :artist, :image, :description)');
        $query->execute($oeuvre);

        // Renvoyer l'utilisateur vers la nouvelle œuvre créée
        header('Location: oeuvre.php?id=' . $database->lastInsertId());

    } else {
        header('Location: ajouter.php');
    }


