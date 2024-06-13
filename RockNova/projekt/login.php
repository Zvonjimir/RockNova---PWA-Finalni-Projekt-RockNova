<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" type="image/x-icon" href="../img/favicon.ico"/>
    <link rel="stylesheet" href="css/administacija.css"/>
    <title>Administracija</title>
</head>
<body>
    <?php include 'header.php'; ?>

    <main>
        <div class="login">    
        <form action="skripte/check_login.php" method="POST" enctype="multipart/form-data">
        <img src="../img/RockNovaLogo.png" alt="slika" /><br>
            <label for="korisnicko_ime">Korisničko ime:</label>
            <input type="text" id="korisnicko_ime" name="korisnicko_ime" required>
            <br>
            <label for="lozinka">Lozinka:</label>
            <input type="password" id="lozinka" name="lozinka" required>
            <br>
            <input type="submit" value="Prijavi se">
        </form>
        </div>
    </main>
    <footer>
        <p>©RockNova</p>
    </footer>
</body>
</html>
