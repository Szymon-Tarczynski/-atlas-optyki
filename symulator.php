<!DOCTYPE html>
<html lang="pl">

<head>

    <meta charset="UTF-8">

    <title>Symulator Widzenia</title>

    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/footer.css">

</head>

<body>

    <main>

        <div class="navbar">

            <a href="index.php" class="logo">
                Atlas Optyki
            </a>

        </div>

        <div class="description">

            <h2>Symulator Widzenia</h2>

            <img id="obraz" src="images/wzrok/zdrowy.jpg" class="simulator-image" alt="Symulator widzenia">

            <h3 id="opis">
                Zdrowy wzrok
            </h3>

            <input type="range" min="0" max="4" value="0" oninput="pokaz(this.value)">

        </div>

        <div class="back-button">

            <a href="index.php">
                ← Powrót
            </a>

        </div>

    </main>

    <div class="footer">

        <a>
            © 2026 Atlas Optyki - Szymon
        </a>

    </div>

    <script>

        function pokaz(x) {

            const obrazy = [

                "images/wzrok/zdrowy.jpg",

                "images/wzrok/krotkowzrocznosc.jpg",

                "images/wzrok/dalekowzrocznosc.jpg",

                "images/wzrok/astygmatyzm.jpg",

                "images/wzrok/daltonizm.jpg"

            ];

            const opisy = [

                "Zdrowy wzrok",

                "Krótkowzroczność",

                "Dalekowzroczność",

                "Astygmatyzm",

                "Daltonizm"

            ];

            const obraz =
                document.getElementById("obraz");

            obraz.style.opacity = "0";

            setTimeout(() => {

                obraz.src = obrazy[x];

                opis.innerHTML = opisy[x];

                obraz.style.opacity = "1";

            }, 250);

        }

    </script>

</body>

</html>