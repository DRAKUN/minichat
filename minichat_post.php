<?php

//setcookie('pays', 'Chine', time() + 365*24*3600, null, null, false, true);
// Effectuer ici la requête qui insère le message

	try
        {
                $bdd = new PDO('mysql:host=localhost;dbname=minichat;charset=utf8','root','passer', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        }
        catch(Exception $e)
        {
                die('Erreur : '.$e->getMessage());
        }

	if(isset($_POST['pseudo']) AND $_POST['pseudo'] <> '')
	{
		$pseudo = $_POST['pseudo'];
		setcookie('pseudo', $pseudo, time() + 365*24*3600, null, null, false, true);
        $req = $bdd->prepare('INSERT INTO lechat(pseudo,message,ladate) VALUE (:pseudo,:message,NOW())');
	$req->execute(array(
		'pseudo' 	=> 	$_POST['pseudo'],
		'message'	=>	$_POST['message'],
	));
	}


// Puis rediriger vers minichat.php comme ceci :
header('Location: minichat.php');
?>
