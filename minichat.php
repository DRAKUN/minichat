<?php
setcookie('pseudo', 'guest', time() + 365*24*3600, null, null, false, true); // On écrit un cookie
?>
<!DOCTYPE html>
<html>
	<body>
	<form action="minichat_post.php" method="post">
	<p>	
		<label>PSEUDO</label>
		<input type="text" name="pseudo" value="<?php echo $_COOKIE['pseudo']; ?>">
	</p>
	<p>
		<label>Message</label>
		<input type="text" name="message">
	</p>
	<p> 	<input type="submit" value="envoyer"></p>
	</form>
	<hr>
<?php
	try
	{
		$bdd = new PDO('mysql:host=localhost;dbname=minichat','root','passer', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	}
	catch(Exception $e)
	{
		die('Erreur : '.$e->getMessage());
	}

	$reponse = $bdd->query("SELECT pseudo,message,DATE_FORMAT(ladate, '%d/%m/%Y à %Hh %imin %ss') AS ladate FROM lechat ORDER by id DESC limit 0,10");
?>
 <table border="0" cellpadding="5" cellspacing="5">
                <tr>
                        <th>Heure d'envoi</th>
                        <th>Pseudo</th>
                        <th>Message</th>
                </tr>
<?php

	while($donnees = $reponse->fetch())
	{
		?>
		<strong>
			<tr style="border-bottom:1px solid">
				<td> <?php echo $donnees['ladate']; ?> </td>
				<td> <?php echo htmlspecialchars($donnees['pseudo']); ?></td>
				</strong>
				<td> <?php echo htmlspecialchars($donnees['message']); ?></td>	
			</tr>
		<?php	
	}

	$reponse->closeCursor();
?>
</table>
	<a href="minichat_post.php">Rafraichir</a> 
</body>
</html>
