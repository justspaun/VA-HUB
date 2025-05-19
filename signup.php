<?php
// PHP logic for signup
$error = '';
$success = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Enable error reporting for development
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    // Database connection
    $host = 'localhost';
    $db_user = 'root';
    $db_pass = '';
    $db_name = 'villa_amanda';

    $conn = new mysqli($host, $db_user, $db_pass, $db_name);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Capture input values
    $fullname = trim($_POST['fullname']);
    $block = $_POST['block'];
    $lot = $_POST['lot'];
    $phase = $_POST['phase'];
    $age = intval($_POST['age']);
    $gender = $_POST['gender'];
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    // Check if email already exists
    $check = $conn->prepare("SELECT id FROM users WHERE email = ?");
    $check->bind_param("s", $email);
    $check->execute();
    $check->store_result();

    if ($check->num_rows > 0) {
        $error = "Email already registered.";
    } else {
        // Insert new user (password stored as plain text)
        $stmt = $conn->prepare("INSERT INTO users (fullname, block, lot, phase, age, gender, email, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssiiss", $fullname, $block, $lot, $phase, $age, $gender, $email, $password);

        if ($stmt->execute()) {
            $success = "Signup successful. You can now <a href='login.php'>login</a>.";
        } else {
            $error = "Something went wrong. Please try again.";
        }
        $stmt->close();
    }
    $check->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Villa Amanda E-Residence Hub - Sign Up</title>
    <style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  
  body, html {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url('images/bg.jpg'); /* Replace with your image path */
    background-size: cover; /* Ensures the image covers the entire screen */
    background-position: center; /* Centers the background image */
    background-repeat: no-repeat; /* Prevents the image from repeating */
    height: 100%;
  }
  
  /* Container for the content */
  .container {
    position: relative;
    text-align: center;
    color: white;
    height: 100vh;  /* Ensures the container fills the full viewport height */
    width: 100vw;  /* Ensures full width */
  }

  .background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    object-fit: cover;
    opacity: 0.8;
  }
  
  .content {
    position: relative;
    background-color: rgba(255, 255, 255, 0.95);
    padding: 20px;
    border-radius: 20px;
    margin-top: 20vh; /* Adjusted margin to avoid overflow */
    width: 85%;
    margin-left: auto;
    margin-right: auto;
    z-index: 1;
  }
  
  h1 {
    color: black;
    font-size: 24px;
    margin-bottom: 15px;
  }
  
  .logo img {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    margin-bottom: 20px;
    object-fit: cover;
  }
  
  /* Input field container */
  .input-container {
    margin-bottom: 15px;
  }
  
  input, select {
    width: 100%;
    padding: 12px;
    font-size: 16px;
    border: 2px solid #ccc;
    border-radius: 25px;
    margin-top: 5px;
  }
  
  /* Button styling */
  button {
    width: 100%;
    padding: 12px;
    background-color: #333;
    color: white;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    cursor: pointer;
  }
  
  button:hover {
    background-color: #555;
  }
  
  /* Link to login page */
  .login-link {
    margin-top: 20px;
  }

  .login-link span {
    color: black;  /* Ensure the "Don't have an account?" text is black */
  }
  
  .login-link a {
    text-decoration: none;
    color: blue;  /* Change color to blue for the "Log In" link */
    font-weight: bold;
  }
  
  .login-link a:hover {
    color: #555;
  }
  
  /* Mobile Optimization */
  @media screen and (max-width: 768px) {
    .content {
      width: 90%;
    }
  
    h1 {
      font-size: 20px;
    }
  
    .logo img {
      width: 60px;
      height: 60px;
    }
  
    .input-container input,
    .input-container select {
      font-size: 14px;
      padding: 10px;
    }
  
    button {
      font-size: 14px;
    }
  }
  
  @media screen and (max-width: 480px) {
    .content {
      width: 90%;
      padding: 15px;
    }
  
    h1 {
      font-size: 18px;
    }
  
    .logo img {
      width: 50px;
      height: 50px;
    }
  
    .input-container input,
    .input-container select {
      font-size: 14px;
      padding: 10px;
    }
  
    button {
      font-size: 14px;
    }
  
    .login-link a {
      font-size: 14px;
    }
  }  
    </style>
</head>
<body>
    <div class="container">
        <div class="content">
            <h1>Villa Amanda<br />E-Residence Hub</h1>
            <div class="logo">
                <img src="logo.png" alt="Villa Amanda Logo" />
            </div>

            <?php if ($error): ?>
                <div class="message"><?= htmlspecialchars($error) ?></div>
            <?php elseif ($success): ?>
                <div class="message success"><?= $success ?></div>
            <?php endif; ?>

            <form method="POST" action="signup.php">
                <div class="input-container">
                    <input type="text" name="fullname" placeholder="Full Name" required />
                </div>

                <div class="input-container">
                    <select name="block" required>
                        <option value="" disabled selected>Address (Block)</option>
                        <?php for ($i = 1; $i <= 10; $i++): ?>
                            <option value="Block <?= $i ?>">Block <?= $i ?></option>
                        <?php endfor; ?>
                    </select>
                </div>

                <div class="input-container">
                    <select name="lot" required>
                        <option value="" disabled selected>Select Lot</option>
                        <?php for ($i = 1; $i <= 10; $i++): ?>
                            <option value="Lot <?= $i ?>">Lot <?= $i ?></option>
                        <?php endfor; ?>
                    </select>
                </div>

                <div class="input-container">
                    <select name="phase" required>
                        <option value="" disabled selected>Select Phase</option>
                        <?php for ($i = 1; $i <= 10; $i++): ?>
                            <option value="Phase <?= $i ?>">Phase <?= $i ?></option>
                        <?php endfor; ?>
                    </select>
                </div>

                <div class="input-container">
                    <input type="number" name="age" placeholder="Age" required />
                </div>

                <div class="input-container">
                    <select name="gender" required>
                        <option value="" disabled selected>Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="input-container">
                    <input type="email" name="email" placeholder="Email" required />
                </div>

                <div class="input-container">
                    <input type="password" name="password" placeholder="Password" required />
                </div>

                <button type="submit">SIGN UP</button>
            </form>

            <div class="login-link">
                <span>Already have an account? <a href="login.php">Log in</a></span>
            </div>
        </div>
    </div>
</body>
</html>
