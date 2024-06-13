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

                foreach ($vijesti as $index => $vijest) {
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
    </main>
    <footer>
        <p>©RockNova</p>
    </footer>
</body>

</html>
</body>

</html>
