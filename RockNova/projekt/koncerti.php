<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../img/favicon.ico" />
    <link rel="stylesheet" href="css/index.css" />
    <title>Koncerti</title>
</head>

<body>
    <?php include 'header.php'; ?>
    <main>
    <section>
        <h2>Koncerti</h2>
        <div class="card-container">
            <?php
            include 'skripte/dohvati_koncerti.php';
            $koncerti = dohvatiKoncerti();

            foreach ($koncerti as $index => $koncert) {
                echo '<a href="article_koncerti.php?index=' . $index . '&naziv=' . urlencode($koncert["naziv"]) . '&kratkiOpis=' . urlencode($koncert["kratkiOpis"]) . '&duziOpis=' . urlencode($koncert["duziOpis"]) . '&lokacija=' . urlencode($koncert["lokacija"]) . '&zanr=' . urlencode($koncert["zanr"]) . '&image=' . urlencode($koncert["slika"]) . '&predgrupa=' . urlencode($koncert["predgrupa"]) . '&date=' . urlencode($koncert["datumObjavljivanja"]) . '">';
                echo '<article class="card">';
                echo '<img src="' . $koncert["slika"] . '" alt="slika" />';
                echo '<div class="article-text">';
                echo '<h3>' . $koncert["naziv"] . '</h3>';
                echo '</br>.<hr>';
                echo '<p>' . $koncert["kratkiOpis"] . '</p>';
                echo '<div class="objava">'; 
                echo '<p>Objavljeno: ' . date("d.m.Y. \u H:i", strtotime($koncert["datumObjavljivanja"])) . '</p>';
                echo '</div>';
                echo '</div>';
                echo '</article>';
                echo '<hr>';
                echo '</a>';
            }
            ?>

        </div>
        </section>
    </main>
    <footer>
        <p>©RockNova</p>
    </footer>
</body>

</html>
