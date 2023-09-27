<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Register Page</title>
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
	
	p {
	font-size: 2rem;
	color: #851e3e;
	}


</style>
</head>
<body class="container-fluid mt-3">
	<h2>Student Registration Form</h2>
	<div class="row mt-3">
    	<div class="col">
            <p>Welcome <%= request.getAttribute("userName") %>!</p>
        </div>
    	<div class="col input-group">
      		<span class="input-group-text text-uppercase date-">date</span>
  			<input type="date" class="form-control" aria-label="calendar">
    	</div>
	</div>
	<div class="mt-3">
		<h5 class="text-uppercase">Personal information</h5>
		<div class="mb-3">
	  		<label for="exampleFormControlInput1" class="form-label">Full Name</label>
	  		<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter your first name and last name">
		</div>
		<div class="mb-3">
	  		<label for="exampleFormControlInput1" class="form-label">Date of Birth</label>
	  		<input type="date" class="form-control" aria-label="calendar">
		</div>
	</div>
	<div class="mt-5">
		<h5 class="text-uppercase">Contact information</h5>
		<div class="mb-3">
	  		<label for="exampleFormControlInput1" class="form-label">Address</label>
	  		<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter your address">
		</div>
		<div class="row">
			<div class="col">
		  		<label for="exampleFormControlInput1" class="form-label">City</label>
		  		<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter your city">
			</div>
			<div class="col">
				<label for="exampleFormControlInput1" class="form-label">Province</label>
			  	<select class="form-select" id="inputGroupSelect03" aria-label="Example select with button addon">
				    <option value="ON" selected>Ontario</option>
				    <option value="BC">British Columbia</option>
				    <option value="VC">Vancouver</option>
				    <option value="CA">Calgary</option>
  				</select>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col">
		  		<label for="exampleFormControlInput1" class="form-label">Zip code</label>
		  		<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter your city">
			</div>
			<div class="col">
				<label for="exampleFormControlInput1" class="form-label">Country</label>
			  	<select class="form-select" id="inputGroupSelect03" aria-label="Example select with button addon">
				    <option value="CA" selected>Canada</option>
				    <option value="US">United States</option>
				    <option value="NG">Nigeria</option>
				    <option value="IN">India</option>
  				</select>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col">
		  		<label for="exampleFormControlInput1" class="form-label">Phone</label>
		  		<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter your phone number">
			</div>
			<div class="col">
		  		<label for="exampleFormControlInput1" class="form-label">Email</label>
		  		<input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Enter your email">
			</div>
		</div>
		<div class="row mt-3">
			<div class="col">
		  		<label for="exampleFormControlInput1" class="form-label">Member Type</label>
			</div>
			<div class="col form-check">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  				<label class="form-check-label" for="flexRadioDefault1">
    			Regular
  				</label>
			</div>
			<div class="col form-check">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  				<label class="form-check-label" for="flexRadioDefault1">
    			Premium
  				</label>
			</div>
			<div class="col form-check">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  				<label class="form-check-label" for="flexRadioDefault1">
    			VIP
  				</label>
			</div>
		</div>	
	</div>
	<div class="mt-5 mb-5">
		<h5 class="text-uppercase">Course information</h5>
		<div class="mb-3">
	  		<label for="exampleFormControlInput1" class="form-label">Course Name</label>
	  		<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Enter your course name">
		</div>
		<div class="row mt-3">
			<div class="col">
		  		<label for="exampleFormControlInput1" class="form-label">Payment Details</label>
			</div>
			<div class="col form-check">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  				<label class="form-check-label" for="flexRadioDefault1">
    			Cash
  				</label>
			</div>
			<div class="col form-check">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  				<label class="form-check-label" for="flexRadioDefault1">
    			Cheque
  				</label>
			</div>
			<div class="col form-check">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  				<label class="form-check-label" for="flexRadioDefault1">
    			Credit Card
  				</label>
			</div>
		</div>	
		<div class="mb-3">
	  		<label for="exampleFormControlInput1" class="form-label">Comments</label>
	  		<textarea class="form-control" aria-label="With textarea" placeholder="Enter additional comments here ..."></textarea>
		</div>
		<div class="row mt-3">
			<div class="col">
				<label for="exampleFormControlInput1" class="form-label">Student Signature:</label>
	  			<textarea class="form-control" aria-label="With textarea" ></textarea>
			</div>
			<div class="col">
				<label for="exampleFormControlInput1" class="form-label">Validated By:</label>
	  			<textarea class="form-control" aria-label="With textarea" ></textarea>
			</div>
		</div>	
	</div>
	<div class="text-center mb-3">
		<a href="welcome.jsp" type="button" class="btn btn-primary">Submit</a>
	</div>
	
</body>
</html>