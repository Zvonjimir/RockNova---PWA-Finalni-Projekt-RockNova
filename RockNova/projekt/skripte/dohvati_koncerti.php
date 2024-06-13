<?php
function dohvatiKoncerti()
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "rocknova"; 

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Povezivanje na bazu podataka nije uspjelo: " . $conn->connect_error);
    }

    $sql = "SELECT id, naziv, kratkiOpis, duziOpis, lokacija, zanr, slika, predgrupa, datumObjavljivanja FROM koncerti";
    $result = $conn->query($sql);

    $koncerti = array(); 

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $koncerti[] = $row;
        }
    } else {
        echo "Nema rezultata";
    }

    $conn->close();

    return $koncerti;
}
?>