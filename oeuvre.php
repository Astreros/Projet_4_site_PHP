<?php
    require 'header.php';
    require 'bdd.php';


    // Si l'URL ne contient pas d'id, on redirige sur la page d'accueil
    if(empty($_GET['id'])) {
        header('Location: index.php');
    }

    // Je récupère l'œuvre via son ID au travers de la fonction getOne($idOeuvre)
    $oeuvre = getOne($_GET['id']);

    function getOne($idOeuvre)
    {
        $query = dataBasePDO()->prepare('SELECT * FROM oeuvre WHERE oeuvre.Id = :idOeuvre');
        $query->execute([':idOeuvre' => $idOeuvre]);

        return $query->fetch();
    };

    // Si la requête renvoie une valeur, alors $oeuvre = true.
    // Sinon si l'ID de l'œuvre n'existe pas, la requête ne renvoie rien, ainsi $oeuvre = false.
?>

<?php if ($oeuvre) { ?>

    <article id="detail-oeuvre">
        <div id="img-oeuvre">
            <img src="<?= $oeuvre['image'] ?>" alt="<?= $oeuvre['title'] ?>">
        </div>
        <div id="contenu-oeuvre">
            <h1><?= $oeuvre['title'] ?></h1>
            <p class="description"><?= $oeuvre['artist'] ?></p>
            <p class="description-complete">
                <?= $oeuvre['description'] ?>
            </p>
        </div>
    </article>

<?php } else {
    header('Location: index.php');
} ?>

<?php require 'footer.php'; ?>
