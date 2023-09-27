<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student SignIn Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,opsz,wght@0,6..12,500;0,6..12,700;1,6..12,200&display=swap" rel="stylesheet">
<style type="text/css">
    
    body {
    font-family: 'Nunito Sans', sans-serif;
    }
    
    h2 {
    color: #011f4b;
    font-weight: 700;
    }
    
    h5 {
    color: #011f4b;
    font-weight: 500;
    }
    
    input::placeholder{
    color:#03396c;
    font-weight: 200;
    font-style: italic;
    }

</style>
</head>
<body class="container mt-5">
    <h2 class="mb-3">Login Here!</h2>
    <form action="signin" method="post"> <!-- Specify the HTTP method as POST -->
        <div class="mb-3">
            <label for="inputname" class="form-label" >First Name</label>
            <input type="text" class="form-control" id="inputname" name="inputname" aria-describedby="nameHelp" placeholder="Please enter your First Name">
        </div>
        <div class="mb-3">
            <label for="inputemail" class="form-label">Email address</label>
            <input type="email" class="form-control" id="inputemail" name="inputemail" aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="inputpassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="inputpassword" name="inputpassword">
        </div>
        <input type="Submit" class="btn btn-primary">
    </form>
</body>
</html>
