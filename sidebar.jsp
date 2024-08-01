<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student User Page</title>
    <style>
        .smain {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 250px;
            background-color: #333;
            color: #fff;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .sidebar h2 {
            margin-bottom: 20px;
        }

        .sidebar a {
            display: block;
            width: 100%;
            text-align: center;
            padding: 15px;
            margin: 10px 0;
            background-color: #444;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #77d94c;
        }

        .sidebar img {
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
        }

        .scontent {
            flex: 1;
            padding: 20px;
        }

        .button-with-icon {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .button-with-icon img {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div class="smain">
    <div class="sidebar">
        <h2>Student Dashboard</h2>
        <a href="DisplayInfo?srequest=book" class="button-with-icon">
            <img src="D:\java\Servlets1\lms\images\chechbook.png" alt="Check Books">
            Check Available Books
        </a>
        <a href="takeBook.html" class="button-with-icon">
            <img src="D:\java\Servlets1\lms\images\takebook.jpeg" alt="Take Book">
            Take a Book
        </a>
        <a href="returnBook.html" class="button-with-icon">
            <img src="D:\java\Servlets1\lms\images\restrnbook.png" alt="Return Book">
            Return a Book
        </a>
        <a href="Logout" class="button-with-icon">
            <img src="" alt="Return Book">Log out
            
        </a>
    </div>
    <div class="scontent">
        
    </div>
 </div>
</body>
</html>
