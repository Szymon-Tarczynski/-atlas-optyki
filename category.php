<?php

include "db.php";

$slug = $_GET["slug"];

$category = mysqli_fetch_assoc(
    mysqli_query(
        $conn,
        "SELECT * FROM categories WHERE slug='$slug'"
    )
);

$articles = mysqli_query(
    $conn,
    "SELECT * FROM articles WHERE category_id=" . $category["id"]
);

?>

<!DOCTYPE html>
<html lang="pl">

<head>

    <meta charset="UTF-8">

    <title>
        <?php echo $category["title"]; ?>
    </title>

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

        <div class="articles">

            <?php while ($row = mysqli_fetch_assoc($articles)): ?>

                <div class="article">

                    <?php if (!empty($row["image"])): ?>

                        <img src="<?php echo $row["image"]; ?>" alt="<?php echo $row["title"]; ?>" class="article-image">

                    <?php endif; ?>

                    <div class="article-content">

                        <h2>
                            <?php echo $row["title"]; ?>
                        </h2>

                        <p>
                            <?php echo $row["content"]; ?>
                        </p>

                        <?php if (!empty($row["correction"])): ?>

                            <div class="correction-box">

                                Korekcja wady:
                                <?php echo $row["correction"]; ?>

                            </div>

                        <?php endif; ?>

                    </div>

                </div>

            <?php endwhile; ?>

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

</body>

</html>