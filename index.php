<?php

include "db.php";

$result = mysqli_query(
    $conn,
    "SELECT * FROM categories"
);

$facts = mysqli_query(
    $conn,
    "SELECT * FROM facts"
);

?>

<!DOCTYPE html>
<html lang="pl">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Atlas Optyki</title>

    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/footer.css">

</head>

<body>

    <div class="navbar">

        <a class="logo" href="index.php">
            Atlas Optyki
        </a>

        <a class="nav-btn" href="symulator.php">
            Symulator widzenia
        </a>

        <div class="dropdown">

            <button class="dropbtn">
                Więcej ▼
            </button>

            <div class="dropdown-content">

                <a href="https://pl.wikipedia.org/wiki/Optyka" target="_blank">
                    Informacje o optyce
                </a>

                <a href="test.php">
                    Test wiedzy
                </a>

            </div>

        </div>

    </div>

    <div class="description">

        <h3>
            Atlas Optyki to serwis edukacyjny
            poświęcony światłu, soczewkom,
            budowie oka i zjawiskom optycznym.
        </h3>

    </div>

    <div class="cards-container">

        <?php while ($row = mysqli_fetch_assoc($result)): ?>

            <a class="card" href="category.php?slug=<?php echo $row['slug']; ?>">

                <h2>
                    <?php echo $row['title']; ?>
                </h2>

            </a>

        <?php endwhile; ?>

    </div>

    <div class="hero-image">

        <img src="images/optyka.jpg" alt="Atlas Optyki">

    </div>

    <div class="facts">

        <h2>Ciekawostki o optyce</h2>

        <?php while ($fact = mysqli_fetch_assoc($facts)): ?>

            <div class="fact">

                <?php echo $fact["content"]; ?>

            </div>

        <?php endwhile; ?>

    </div>

    <div class="footer">

        <a>
            © 2026 Atlas Optyki - Szymon
        </a>

    </div>

</body>

</html>