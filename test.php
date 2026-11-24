<?php

include "db.php";

$result = mysqli_query(
    $conn,
    "SELECT * FROM quiz_questions"
);

$questions = [];

while ($row = mysqli_fetch_assoc($result)) {
    $questions[] = $row;
}

?>

<!DOCTYPE html>
<html lang="pl">

<head>

    <meta charset="UTF-8">

    <title>Test Optyki</title>

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

        <div class="quiz-box">

            <h2 id="pytanie"></h2>

            <button class="btn" id="a" onclick="odpowiedz('A')"></button>
            <button class="btn" id="b" onclick="odpowiedz('B')"></button>
            <button class="btn" id="c" onclick="odpowiedz('C')"></button>
            <button class="btn" id="d" onclick="odpowiedz('D')"></button>

            <button class="btn end-btn" onclick="zakonczTest()">
                Zakończ test
            </button>

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

        const pytania =
            <?php echo json_encode($questions); ?>;

        let nr = 0;
        let punkty = 0;

        function pokaz() {

            if (nr >= pytania.length) {
                zakonczTest();
                return;
            }

            pytanie.innerHTML =
                pytania[nr].question;

            a.innerHTML =
                "A. " + pytania[nr].answer_a;

            b.innerHTML =
                "B. " + pytania[nr].answer_b;

            c.innerHTML =
                "C. " + pytania[nr].answer_c;

            d.innerHTML =
                "D. " + pytania[nr].answer_d;
        }

        function odpowiedz(litera) {

            const btn =
                document.getElementById(
                    litera.toLowerCase()
                );

            btn.classList.add("btn-click");

            if (
                litera ==
                pytania[nr].correct_answer
            ) {
                punkty++;
            }

            setTimeout(() => {

                btn.classList.remove(
                    "btn-click"
                );

                nr++;

                pokaz();

            }, 500);
        }

        function zakonczTest() {

            const procent =
                Math.round(
                    punkty * 100 /
                    pytania.length
                );

            document.querySelector(
                ".quiz-box"
            ).innerHTML =

                "<h2>Koniec testu</h2>" +

                "<h3>Wynik: " +
                punkty +
                "/" +
                pytania.length +
                "</h3>" +

                "<h3>" +
                procent +
                "% poprawnych odpowiedzi</h3>";
        }

        pokaz();

    </script>

</body>

</html>