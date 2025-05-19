<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'villa_amanda';

$conn = new mysqli($host, $db_user, $db_pass, $db_name);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$error = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();

        // Plain text password check (no hashing)
        if ($password === $user['password']) {
            session_regenerate_id(true); // Prevent session fixation

            $is_admin = ($user['email'] === 'admin@gmail.com');

            $_SESSION['user'] = [
                'id' => $user['id'],
                'email' => $user['email'],
                'fullname' => $user['fullname'] ?? '',
                'is_admin' => $is_admin
            ];

            if ($is_admin) {
                header("Location: ad_home.php");
            } else {
                header("Location: home.php");
            }
            exit();
        } else {
            $error = "Invalid email or password.";
        }
    } else {
        $error = "Invalid email or password.";
    }

    $stmt->close();
}

$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <link rel="stylesheet" href="login.css" />
</head>
<body>
    <div class="container">
        <img src="images/bg.jpg" class="background" alt="Background" />
        <div class="content">
            <h1>Villa Amanda<br />E-Residence Hub</h1>
            <div class="logo">
                <img src="logo.png" alt="Logo" />
            </div>

            <?php if (!empty($error)): ?>
                <div style="color: red; margin-bottom: 15px;">
                    <?= htmlspecialchars($error) ?>
                </div>
            <?php endif; ?>

            <form action="login.php" method="POST" autocomplete="off">
                <div class="input-container">
                    <input type="email" name="email" placeholder="Email" required />
                </div>
                <div class="input-container">
                    <input type="password" name="password" placeholder="Password" required />
                </div>
                <button type="submit">LOG IN</button>
            </form>

            <div class="login-link">
                <span>Don't have an account? <a href="signup.php">Sign up</a></span>
            </div>
        </div>
    </div>
</body>
</html>
