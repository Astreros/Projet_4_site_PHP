<?php
    require 'header.php';
    require 'bdd.php';

    $dataBase = dataBasePDO();
    $oeuvres = $dataBase->query('SELECT * FROM oeuvre');
?>

<div id="liste-oeuvres">
    <?php foreach($oeuvres as $oeuvre) { ?>
        <article class="oeuvre">
            <a href="oeuvre.php?id=<?php echo $oeuvre['Id']; ?>.php">
                <img src="./<?php echo $oeuvre['image']; ?>" alt="<?php echo $oeuvre['title']; ?>">
                <h2><?php echo $oeuvre['title']; ?></h2>
                <p class="description"><?php echo $oeuvre['artist']; ?></p>
            </a>
        </article>
    <?php } ?>
</div>

<?php require 'footer.php'; ?>