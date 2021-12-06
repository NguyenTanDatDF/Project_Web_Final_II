<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./Components_Customer/AccountSideBar/AccountSideBar.css">
    <link rel="stylesheet" href="./Components_Customer/Footer/Footer.css">
    <link rel="stylesheet" href="./Components_Customer/Header/Header.css">
    <link rel="stylesheet" href="./Pages_Customer/MyAccount/Register/style.css">
</head>

<body>
<div id="header"></div>
<div class="form__container d-md-flex align-items-stretch">
    <div id="accountslide_bar"></div>
    <div id="content" class=" p-md-5 pt-5">
        <div class="about__us__container">
            <h1>Register</h1>
            <h1 style="color: red;">${message}</h1>
            <h1 style="color: green;">${messaget}</h1>
            <p>If you already have an account with us, please login at the login page.</p>
            <form action="RegisterController">
                <div class="about__us__paragraph">
                    <div class="about__us__paragraph__text">
                        <legend>Your Personal Details</legend>

                        <div class="mb-3">
                            <label class="form-label"><span>*</span>First Name</label>
                            <input type="text" class="form-control" placeholder="Enter your First Name here!" required
                                   name="firstname">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><span>*</span>Last Name</label>
                            <input type="text" class="form-control" placeholder="Enter your Last Name here!" required
                                   name="lastname">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><span>*</span>Birthday</label>
                            <input type="date" class="form-control" placeholder="Enter your Telephone here!" required
                                   name="birthday">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><span>*</span>Telephone</label>
                            <input type="number" class="form-control" placeholder="Enter your Telephone here!" required
                                   name="phone">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><span>*</span>Email</label>
                            <input type="email" class="form-control" placeholder="Enter your Email here!" required
                                   name="email">
                        </div>
                        <legend>Your Account Details</legend>
                        <div class="mb-3">
                            <label class="form-label"><span>*</span>Username</label>
                            <input type="text" class="form-control" placeholder="Enter your Username here!" required
                                   name="username">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><span>*</span>Password</label>
                            <input type="password" class="form-control" placeholder="Enter your password here!"
                                   required name="password">
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><span>*</span>Password Confirm</label>
                            <input type="password" class="form-control" placeholder="Confirm your Pasword here!"
                                   required>
                        </div>
                        <div class="row">
                            <div class="col">
                                <form action="LoginForward">
                                    <input type="submit" class="btnn" value="Back">
                                </form>
                            </div>
                            <div class="col">
                                <input type="submit" class="btnn float-right" value="Register">
                            </div>
                        </div>

                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="footer"></div>
</body>
<script src="https://kit.fontawesome.com/e82e1ec9a6.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="./Components_Customer/AccountSideBar/AccountSideBar.js"></script>
<script src="./Components_Customer/AccountSideBar/AccountSideBarMain.js"></script>
<script src="./Components_Customer/Footer/Footer.js"></script>
<script src="./Components_Customer/Header/Header.js"></script>
<script src="./Pages_Customer/MyAccount/Register/main.js"></script>

</html>