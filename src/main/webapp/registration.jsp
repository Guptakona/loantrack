<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- SweetAlert2 CSS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- Custom Styles -->
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: #f5f5f7; /* Light gray background */
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333; /* Dark text color */
        }

        .main {
            display: flex;
            max-width: 800px; /* Max width for the container */
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            background: white; /* White background for the form */
        }

        .signup {
            display: flex;
            width: 100%; /* Ensure full width */
        }

        .signup-form {
            flex: 1; /* Take equal space on the left */
            padding: 40px; /* Padding for the form */
            display: flex;
            flex-direction: column; /* Stack items vertically */
        }

        .signup-form h2 {
            font-size: 24px;
            margin-bottom: 20px;
            font-weight: 600; /* Bold title */
            color: #1d1d1f; /* Dark text */
        }

        .form-group {
            margin-bottom: 20px; /* Spacing between fields */
        }

        .form-group label {
            display: block; /* Ensure label is above the input */
            margin-bottom: 8px; /* Space between label and input */
            font-size: 14px;
            color: #555; /* Slightly lighter text for labels */
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #d1d1d6; /* Light border */
            border-radius: 8px; /* Rounded corners */
            font-size: 16px; /* Font size */
            transition: border-color 0.3s; /* Smooth border color change */
        }

        .form-group input:focus {
            border-color: #007aff; /* Focused border color */
            outline: none; /* Remove default outline */
        }

        .btn-primary {
            background-color: #007aff; /* Apple blue */
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px; /* Font size */
            transition: background-color 0.3s; /* Smooth background color change */
        }

        .btn-primary:hover {
            background-color: #0051a8; /* Darker blue on hover */
        }

        .already-member {
            text-align: center;
            margin-top: 20px; /* Spacing above the link */
        }

        .already-member a {
            color: #007aff; /* Apple blue */
            text-decoration: none;
        }

        .already-member a:hover {
            text-decoration: underline; /* Underline on hover */
        }

        .signup-image {
            flex: 1; /* Take equal space on the right */
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f9f9f9; /* Light gray background for the image area */
        }

        .signup-image img {
            max-width: 80%; /* Responsive image */
            height: auto;
        }
    </style>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="signup-form">
            <h2 class="form-title">Sign up</h2>
            <form method="post" action="register" class="register-form" id="register-form">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" name="name" id="name" placeholder="Full Name" required />
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="Your Email" required />
                </div>
                <div class="form-group">
                    <label for="pass">Password</label>
                    <input type="password" name="pass" id="pass" placeholder="Password" required />
                </div>
                <div class="form-group">
                    <label for="re_pass">Re-Enter Password</label>
                    <input type="password" name="re_pass" id="re_pass" placeholder="Re-Enter password" required />
                </div>
                <div class="form-group">
                    <label for="contact">Contact No</label>
                    <input type="text" name="contact" id="contact" placeholder="Contact no" required />
                </div>
                <div class="form-group">
                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                    <label for="agree-term" class="label-agree-term">
                        I agree to all statements in <a href="#" class="term-service">Terms of service</a>
                    </label>
                </div>
                <div class="already-member">
                    <a href="login.jsp">I am already a member</a>
                </div>
                <div class="form-group form-button">
                    <input type="submit" name="signup" id="signup" class="form-submit btn-primary" value="Register" />
                </div>
            </form>
        </div>
        <div class="signup-image">
            <figure>
                <img src="images/signup.jpg" alt="sign up image">
            </figure>
        </div>
    </section>

</div>

<script>
document.getElementById('register-form').addEventListener('submit', function(event) {
    event.preventDefault();

    const contact = document.getElementById('contact').value;
    const pass = document.getElementById('pass').value;
    const re_pass = document.getElementById('re_pass').value;

    if (contact.length !== 10) {
        Swal.fire('Error', 'Mobile number must be 10 digits', 'error');
        return;
    }

    if (pass !== re_pass) {
        Swal.fire('Error', 'Passwords do not match', 'error');
        return;
    }

    // If validation passes, you can show a success message or submit the form
    Swal.fire('Success', 'Registration successful!', 'success').then(() => {
        this.submit(); // Submit the form after the alert
    });
});
</script>

</body>
</html>
