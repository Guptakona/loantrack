<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- SweetAlert CSS -->
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">

    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: #f5f5f7;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #333;
        }

        .main {
            display: flex;
            width: 100%; /* Adjust the width of the whole layout */
            max-width: 1100px;
            min-height: 600px; /* Set a minimum height for the login box and image container */
            border-radius: 12px;
            background-color: #fff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .login-image {
            width: 50%; /* Take up half of the container */
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #f0f0f5;
        }

        .login-image img {
            width: 100%; /* Ensure the image fills the container */
            height: 100%;
            object-fit: cover; /* Maintain the aspect ratio of the image */
        }

        .login-box {
            width: 50%; /* Take up half of the container */
            padding: 40px;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            justify-content: center;
            background-color: #ffffff;
        }

        .form-title {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #d1d1d1;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 16px;
       
            color: #333;
        }

        .form-group input:focus {
            border-color: #0071e3;
            outline: none;
            background-color: #fff;
        }

        .form-group a {
            font-size: 14px;
            color: #0071e3;
            text-decoration: none;
            display: block;
            margin-top: 10px;
        }

        .form-group a:hover {
            text-decoration: underline;
        }

        .form-submit {
            width: 100%;
            padding: 12px;
            border: none;
            background: #0071e3;
            color: #fff;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .form-submit:hover {
            background: #005bb5;
        }

        .social-login {
            margin-top: 20px;
            font-size: 14px;
            text-align: center;
        }

        .socials {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .socials li {
            display: inline;
        }

        .socials a {
            color: #0071e3;
            font-size: 24px;
            transition: color 0.3s ease;
        }

        .socials a:hover {
            color: #005bb5;
        }

        /* Mobile responsive adjustments */
        @media (max-width: 768px) {
            .main {
                flex-direction: column; /* Stack the image and login box vertically */
                width: 90%;
            }

            .login-image, .login-box {
                width: 100%; /* Make both the image and login box full width */
            }

            .login-image img {
                height: 250px;
                object-fit: cover;
            }
        }
    </style>
</head>
<body>

<div class="main">
    <!-- Image Section (Left Side) -->
    <div class="login-image">
        <img src="images/login.jpg" alt="Sign In Image">
    </div>

    <!-- Login Box Section (Right Side) -->
    <div class="login-box">
        <h2 class="form-title">Sign In</h2>
        <form method="post" action="login" class="register-form" id="login-form">
            <div class="form-group">
                <input type="text" name="username" id="username" placeholder="Your Email" required />
            </div>
            <div class="form-group">
                <input type="password" name="password" id="password" placeholder="Password" required />
            </div>
            <div class="form-group">
                <a href="forgotPassword.jsp">Forgot Password?</a>
                <a href="registration.jsp" class="signup-image-link">Create an account</a>
            </div>
            <div class="form-group form-button">
                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />
            </div>
        </form>
        <div class="social-login">
            <span>Or sign in with</span>
            <ul class="socials">
                <li><a href="https://www.facebook.com/"><i class="zmdi zmdi-facebook"></i></a></li>
                <li><a href="https://accounts.google.com/"><i class="zmdi zmdi-google"></i></a></li>
            </ul>
        </div>
    </div>
</div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    const status = document.getElementById('status') ? document.getElementById('status').value.trim() : '';
    const error = document.getElementById('error') ? document.getElementById('error').value.trim() : '';

    function showAlert(title, text, type) {
        swal(title, text, type);
    }

    if (status === 'result-sucess') {
        showAlert('Success', 'Password has been reset successfully!', 'success');
    } else if (status === 'success') {
        showAlert('Success', 'Password has been reset successfully!', 'success');
    } else if (status === 'failed') {
        showAlert('Error', 'Login failed. Please check your email and password.', 'error');
    } else if (error) {
        showAlert('Error', error, 'error');
    }
});
</script>

</body>
</html>
