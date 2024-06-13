<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "rocknova"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Povezivanje na bazu podataka nije uspjelo: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $korisnicko_ime = $_POST['korisnicko_ime'];
    $lozinka = $_POST['lozinka'];

    $stmt = $conn->prepare("SELECT id, ime, prezime, username, email, password  FROM korisnik WHERE username = ?");
    $stmt->bind_param("s", $korisnicko_ime);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows == 1) {
        $stmt->bind_result($id, $ime, $prezime, $db_username, $email, $db_password);
        $stmt->fetch();

        if ($lozinka == $db_password) {
            $_SESSION['korisnik_id'] = $id;
            $_SESSION['korisnicko_ime'] = $db_username;

            header("Location: ../administracija.php");
            exit();
        } else {
            echo "Neispravna lozinka. Molimo pokušajte ponovno ili se registrirajte.";
        }
    } else {
        echo "Korisnik s tim korisničkim imenom ne postoji. Molimo pokušajte ponovno ili se registrirajte.";
    }
    
    $stmt->close();
}

$conn->close();
?>
