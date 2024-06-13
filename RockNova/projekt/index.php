<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="../img/favicon.ico" />
    <link rel="stylesheet" href="css/index.css" />
    <title>RockNova</title>
</head>

<body>
    <?php include 'header.php'; ?>

    <main>
        <section>
            <h2>Vijesti</h2>
            <div class="card-container">

                <?php
                include 'skripte/dohvati_vijesti.php';
                $vijesti = dohvatiVijesti();
                shuffle($vijesti);
                $prveTriVijesti = array_slice($vijesti, 0, 3);

                foreach ($prveTriVijesti as $index => $vijest) {
                    echo '<a href="article_vijest.php?index=' . urlencode($index) . '&naziv=' . urlencode($vijest["naziv"]) . '&slika=' . urlencode($vijest["slika"]) . '&kratkiOpis=' . urlencode($vijest["kratkiOpis"]) . '&duziOpis=' . urlencode($vijest["duziOpis"]) . '&datumObjave=' . urlencode($vijest["datumObjave"]) . '">';
                    echo '<article class="card">';
                    echo '<img src="' . htmlspecialchars($vijest["slika"], ENT_QUOTES, 'UTF-8') . '" alt="slika" />';
                    echo '<div class="article-text">';
                    echo '<h3>' . htmlspecialchars($vijest["naziv"], ENT_QUOTES, 'UTF-8') . '</h3>';
                    echo '</br>.<hr>';
                    echo '<p>' . htmlspecialchars($vijest["kratkiOpis"], ENT_QUOTES, 'UTF-8') . '</p>';
                    echo '<div class="objava">';
                    echo '</br>';
                    echo '<p>Objavljeno: ' . date("d.m.Y. \u H:i", strtotime($vijest["datumObjave"])) . '</p>';
                    echo '</div>';
                    echo '</div>';
                    echo '</article>';
                    echo '<hr>';
                    echo '</a>';
                }
                ?>

            </div>
        </section>
        <section>
            <h2>Koncerti</h2>
            <div class="card-container">
            <?php
            include 'skripte/dohvati_koncerti.php';
            $koncerti = dohvatiKoncerti(); 
            shuffle($koncerti);
            $prvaTriKoncerta = array_slice($koncerti, 0, 3);

            foreach ($prvaTriKoncerta as $index => $koncert) {
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
</body>

</html>
