$html = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Web Page</title>
    <link rel="stylesheet" href="src/css/style.css">
</head>
<body>
    <h1>Hello, World!</h1>

    <script src="src/js/app.js"></script>
</body>
</html>
"@

$outputFile = Read-Host "Enter the HTML filename (e.g., about.html)"
Set-Content -Path $outputFile -Value $html
Write-Host "HTML boilerplate created: $outputFile"
