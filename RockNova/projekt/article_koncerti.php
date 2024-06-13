<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../img/favicon.ico">
    <link rel="stylesheet" href="css/article.css">
    <title>Koncert</title>
</head>

<body>
    <?php include 'header.php'; ?>

    <div class="article-container">
        <?php
        if (
            isset($_GET['naziv']) &&
            isset($_GET['image']) &&
            isset($_GET['kratkiOpis']) &&
            isset($_GET['duziOpis']) &&
            isset($_GET['lokacija']) &&
            isset($_GET['zanr']) &&
            isset($_GET['predgrupa']) &&
            isset($_GET['date'])
        ) {

            $naziv = $_GET['naziv'];
            $image = $_GET['image'];
            $kratkiOpis = $_GET['kratkiOpis'];
            $duziOpis = $_GET['duziOpis'];
            $lokacija = $_GET['lokacija'];
            $zanr = $_GET['zanr'];
            $predgrupa = $_GET['predgrupa'];
            $date = $_GET['date'];

            echo '<h1>' . $naziv . '</h1>';
            echo '<hr>';
            echo '<div class="container-publish-date"><p> Objavljeno: ' . $date . '</p></div>';
            echo '<br/>';
            echo '<br/>';
            echo '<img src="' . $image . '" alt="slika" />';    
            echo '<div class="about">' . $duziOpis . '</div>';         
            echo '<div class="about">' . $kratkiOpis . '</div>';    
            echo '<hr>';
            echo '<div class="detalji">';   
            echo '<p><b>Lokacija:</b> ' . $lokacija . '</p>';
            echo '<p><b>Žanr:</b> ' . $zanr . '</p>';
            echo '<p><b>Predgrupa:</b> ' . $predgrupa . '</p>';
            echo '</div>';    
        } else {
            echo "<p>Nema dovoljno podataka o članku.</p>";
        }
        ?>
    </div>
    <footer>
        <p>©RockNova</p>
    </footer>
</body>

</html>