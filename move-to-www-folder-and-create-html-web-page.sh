#!/bin/bash
cd /var/www
sudo mkdir static-html-website
sudo chown -R www-data:www-data static-html-website
sudo chmod -R 777 static-html-website
cd static-html-website
sudo touch website.html
sudo chown -R www-data:www-data website.html
sudo chmod -R 777 website.html
sudo bash -c "cat <<EOF > website.html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My HTML Website</title>
<style>
body {
font-family: Arial, sans-serif;
margin: 0;
padding: 0;
background-color: #f4f4f4;
}
header {
background-color: #35424a;
color: white;
text-align: center;
padding: 1rem;
}
nav ul {
list-style-type: none;
margin: 0;
padding: 0;
text-align: center;
}
nav li {
display: inline;
margin-right: 1rem;
}
main {
padding: 2rem;
}
footer {
background-color: #35424a;
color: white;
text-align: center;
padding: 1rem;
}
</style>
</head>
<body>
<header>
<h1>Welcome to My HTML Website</h1>
</header>
<nav>
<ul>
<li><a href="#">Home</a></li>
<li><a href="#">About</a></li>
<li><a href="#">Services</a></li>
<li><a href="#">Contact</a></li>
</ul>
</nav>
<main>
<h2>Welcome</h2>
<p>Welcome to the static website.</p>
</main>
<footer>
<p>&copy; 2023 My HTML Website. All rights reserved.</p>
</footer>
</body>
</html>
EOF"

echo "HTML content written successfully"
