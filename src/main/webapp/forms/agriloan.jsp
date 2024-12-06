<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agriculture Loan Application</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        /* General Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f9fbfd;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: 40px auto;
            padding: 30px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            font-weight: 600;
            color: #34495e;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: 500;
            color: #2c3e50;
        }

        input, select, textarea {
            padding: 12px;
            border: 2px solid #dfe6e9;
            border-radius: 10px;
            font-size: 16px;
            transition: all 0.3s ease;
            background-color: #f0f4f7;
        }

        input:focus, select:focus, textarea:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 5px 15px rgba(52, 152, 219, 0.2);
        }

        textarea {
            resize: none;
        }

        .two-columns {
            display: flex;
            gap: 10px;
        }

        .two-columns input {
            width: 100%;
        }

        .submit-btn {
            background-color: #3498db;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            font-size: 18px;
            font-weight: 600;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #2980b9;
            box-shadow: 0 8px 20px rgba(52, 152, 219, 0.3);
        }

        @media (max-width: 768px) {
            .container {
                width: 90%;
            }

            .two-columns {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Apply for an Agriculture Loan</h2>
        <form action="#" method="POST">
            
            <!-- Full Name -->
            <label for="fullName">Full Name*</label>
            <div class="two-columns">
                <input type="text" id="firstName" name="firstName" placeholder="First Name" required>
                <input type="text" id="lastName" name="lastName" placeholder="Last Name" required>
            </div>
            
            <!-- Email -->
            <label for="email">E-mail*</label>
            <input type="email" id="email" name="email" placeholder="example@example.com" required>
            
            <!-- Phone Number -->
            <label for="phone">Phone Number*</label>
            <input type="tel" id="phone" name="phone" placeholder="(000) 000-0000" pattern="^\(\d{3}\) \d{3}-\d{4}$" required>
            
            <!-- Address -->
            <label for="address">Address*</label>
            <input type="text" id="streetAddress" name="streetAddress" placeholder="Street Address" required>
            <input type="text" id="streetAddress2" name="streetAddress2" placeholder="Street Address Line 2">
            <div class="two-columns">
                <input type="text" id="city" name="city" placeholder="City" required>
                <input type="text" id="state" name="state" placeholder="State / Province" required>
            </div>
            <input type="text" id="zipCode" name="zipCode" placeholder="Postal / Zip Code" required>
            
            <!-- Land Ownership -->
            <label for="landOwnership">Do you own agricultural land?*</label>
            <select id="landOwnership" name="landOwnership" required>
                <option value="" disabled selected>Please Select</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <!-- Land Details -->
            <label for="landDetails">Land Details (if applicable):</label>
            <textarea id="landDetails" name="landDetails" rows="4" maxlength="300" placeholder="Provide details about your agricultural land..."></textarea>
            
            <!-- Requested Loan Amount -->
            <label for="loanAmount">Requested Loan Amount*</label>
            <input type="number" id="loanAmount" name="loanAmount" placeholder="Enter the amount" required>

            <!-- Farming Experience -->
            <label for="farmingExperience">Years of Farming Experience*</label>
            <input type="number" id="farmingExperience" name="farmingExperience" placeholder="Enter number of years" required>
            
            <!-- Comments or questions -->
            <label for="comments">Comments or questions:</label>
            <textarea id="comments" name="comments" rows="4" maxlength="300" placeholder="0/300"></textarea>
            
            <!-- Submit Button -->
            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

</body>
</html>
