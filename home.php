<?php
session_start();
if (!isset($_SESSION['user'])) {
    // If the user session is not set, redirect to login page
    header('Location: login.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>WELCOME!</h1>
            <p>Overview</p>
            <div class="profile-icon">
                <a href="profile.php">
                    <img src="profile.png" alt="Profile Icon">
                </a>
            </div>
        </header>
        
        <div class="grid-container">
            <div class="grid-item">
                <div class="card">
                    <p class="card-title">ANNOUNCEMENTS</p>
                    <p class="card-context">View the latest announcements in the community.</p>
                </div>
            </div>

            <div class="grid-item">
                <div class="card">
                    <p class="card-title">SERVICE INFO</p>
                    <p class="card-context">View workers information for repair services.</p>
                </div>
            </div>

            <div class="grid-item">
                <div class="card">
                    <p class="card-title">REPORTS</p>
                    <p class="card-context">Send reports and concerns in the community.</p>
                </div>
            </div>

            <div class="grid-item">
                <div class="card">
                    <p class="card-title">RESERVATION</p>
                    <p class="card-context">Make a reservation for facilities for events.</p>
                </div>
            </div>
        </div>

        <footer>
            <nav>
                <ul>
                    <li><a href="home.php"><img src="home.png" alt="Home">HOME</a></li>
                    <li><a href="announcement.php"><img src="announcement.png" alt="Announcements">ANNOUNCEMENTS</a></li>
                    <li><a href="service.php"><img src="service.png" alt="Service Info">SERVICE INFO</a></li>
                    <li><a href="report.php"><img src="reports.png" alt="Reports">REPORTS</a></li>
                    <li><a href="reservation.php"><img src="reservation.png" alt="Reservation">RESERVATION</a></li>
                </ul>
            </nav>
        </footer>
    </div>
</body>
</html>
