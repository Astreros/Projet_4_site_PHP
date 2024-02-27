<?php require 'header.php'; ?>

<form action="traitement.php" method="POST">
    <div class="champ-formulaire">
        <label for="title">Titre de l'œuvre</label>
        <input type="text" name="title" id="title" minlength="3" maxlength="32" value="<?= isset($_SESSION['tempData']['title']) ? $_SESSION['tempData']['title'] : '' ?>">
    </div>
    <div class="champ-formulaire">
        <label for="artist">Auteur de l'œuvre</label>
        <input type="text" name="artist" id="artist"  minlength="3" maxlength="32" value="<?= isset($_SESSION['tempData']['artist']) ? $_SESSION['tempData']['artist'] : '' ?>">
    </div>
    <div class="champ-formulaire">
        <label for="image">Lien de l'image</label>
        <input type="url" name="image" id="image" value="<?= isset($_SESSION['tempData']['image']) ? $_SESSION['tempData']['image'] : '' ?>">
    </div>
    <div class="champ-formulaire">
        <label for="description">Description</label>
        <textarea name="description" id="description"  minlength="3" maxlength="500"><?= isset($_SESSION['tempData']['description'])? $_SESSION['tempData']['description'] : '' ?></textarea>
    </div>

    <div class="errors-box">
        <?php
        if (isset($_SESSION['emptyError'])) {
            echo $_SESSION['emptyError'];
        } elseif (isset($_SESSION['errors'])) {
            foreach ($_SESSION['errors'] as $error => $value) {
                echo $value.'<br/>';
            }
        }
        ?>
    </div>

    <input type="submit" value="Valider" name="submit">
</form>

<?php require 'footer.php'; ?>
