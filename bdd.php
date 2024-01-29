<?php

function dataBasePDO()
{
    try
    {
        return new PDO('mysql:host=localhost;dbname=artbox;charset=utf8', 'root', '', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]);
    }
    catch (Exception $e)
    {
        die('Erreur : ' . $e->getMessage());
    }
}

