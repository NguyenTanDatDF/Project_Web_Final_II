<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Noriva Admin's page</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="./Components/SlideBar/Sidebar.css">
    <link rel="stylesheet" href="./Pages/Catalog/ProductEdit/style.css">

    <script src="https://kit.fontawesome.com/e82e1ec9a6.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="wrapper">
        <!-- Sidebar  -->
        <div id="side__bar"></div>
        <!-- Page Content  -->
        <div id="content">
            <nav style="background-color: whitesmoke; padding: 15px 0;" class="sticky-top">
                <div class="nav__container row">
                    <div class="input-group col">
                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                            <i class="fas fa-align-justify"></i>
                        </button>
                        <span style="width: 40px"></span>
                        <span class="input-group-text" id="basic-addon1"><i class="fas fa-search"></i></span>
                        <input type="text" class="form-control" placeholder="Search everthings you need!">
                    </div>
                    <div class="btn__group col">
                        <div class="dropdown float-end">
                            <button class="btn btn-outline-secondary" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                <span>
                                    <img style="height: 20px; width: 20px;" src="https://scontent.fdad2-1.fna.fbcdn.net/v/t1.6435-9/171619300_1092543814590800_1632394128569325001_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=P560_w3_4aMAX83vWZW&_nc_ht=scontent.fdad2-1.fna&oh=5b8190fd275affaaf37019f3cd0b206a&oe=61A3FFE8" alt="">
                                </span>
                                Username here!  
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                              <li><a class="dropdown-item" href="#">Profile</a></li>
                              <li><a class="dropdown-item" href="#">Settings</a></li>
                              <li><a class="dropdown-item" href="#">Sign Out</a></li>
                            </ul>
                          </div>
                    </div>
                    
                    
                </div>
            </nav>
            <form action = "SaveController" method = "post">
            <div class="page__container">
                <div class="page__top row">
                    <h1 class="page__title col">
                        Edit Product
                    </h1>
                    <div class="btn__group col">
                        <input type ="submit" class="add__btn float-end" value = "Save Change">
                      <input type ="hidden" name = "action" value="edit" >
                    </div>
                </div>
                <div class="row" style="padding: 0 20px;">
                    <div class="basic__product__info col">
                        <h2 class="basic__pro__title">
                            Basic information
                        </h2>
                       
                            <div class="mb-3">
                                <label class="form-label">Product Name</label>
                                <input type = "text" name = "name" value = "${name}"  class="form-select">
                                   
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Brand</label>
                                <select class="form-select" name = "brand_code">
                                    <option selected>${brand_code }</option>
                                    <option value="Nike">Nike</option>
                                    <option value="Adidas">Adidas</option>
                                    <option value="Puma">Puma</option>
                                  </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Product Description</label>
                                <input name = "description" class="form-control" value="${description }"   id="floatingTextarea"></input>
                            </div>
                       
                         <div class="row py-4">
                            <div class="mx-auto">
                                <label style="margin-bottom: 15px;">
                                    Product Image
                                </label>
                                <!-- Upload image input-->
                                <div class="input-group mb-3 px-2 py-2 bg-white shadow-sm"
                                    style="border: 1px solid #777777">
                                    <input id="upload" type="file" onchange="readURL(this);"
                                        class="form-control border-0">
                                    <label id="upload-label" for="upload" class="font-weight-light text-muted">Choose
                                        file</label>
                                    <div class="input-group-append">
                                        <label style="border: 1px solid #777777" for="upload"
                                            class="btn btn-light m-0 rounded-pill px-4"> <i
                                                class="fa fa-cloud-upload mr-2 text-muted"></i><small
                                                class="text-uppercase font-weight-bold text-muted"> Choose
                                                file</small></label>
                                    </div>
                                </div>
                                
                                <label class="form-label">Old Image Product</label> </br>
                                 <img src= ${picture_url} alt="Empty">
                                 
                                    <label class="form-label">New Image Product </label>
                                <!-- Uploaded image area-->
                                <p class="font-italic text-white ">The image uploaded will be rendered inside the box
                                    below.</p>
                                <div class="image-area" style="margin-top: -50px;">
                                    <img 
                                        id="imageResult" src="#" alt=""
                                        class="img-fluid rounded shadow-sm mx-auto d-block">
                                </div>
                                
                                <input id="data_url"  name="picture_url">
                                <input type = "text" id="data_url" value = ${picture_url}  name="old_picture_url">
                               
                            </div>
                        </div>
    
                    </div>
                    <div style="width: 25px"></div>
                    <div class="price__product col">
                        <h2 class="basic__pro__title">
                            Detail information
                        </h2>
                        
                            <div class="mb-3">
                                <label class="form-label">Price</label>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Price</span>
                                    <input type="number" name = "price" class="form-control"
                                        aria-label="Amount (to the nearest dollar)">
                                    <span class="input-group-text">USD</span>
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">Old price</span>
                                    <input disabled type="number" value ="${price}"  class="form-control">
                                     <input type ="hidden" name = "old_price" value ="${price}"  
                                        aria-label="Amount (to the nearest dollar)">
                                    <span class="input-group-text">USD</span>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Category</label>
                                <select class="form-select" name = "category_code">
                                    <option selected>${category_code}</option>
                                    <option value="Men's shoes">Men's shoes</option>
                                    <option value="Women's shoes">Women's shoes</option>
                                    <option value="Clothes">Clothes</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label mb-3">Inventory</label>
                                <div class="container row">
                                   
                                    <div class="col">
                                        <h6>Quantity</h6>
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Quantity</span>
                                            <input type="text" value = "${quatity }" class="form-control" name = "quatity">
                                          </div>
                                        <input type="hidden" value = "${id}"  name = "id">
                                    </div>
                                </div>
                            </div>
                        
                    </div>
                </div>
                
            </div>
            </form>
            <div id="footer"></div>
        </div>
    </div>
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
    <script src="./Components/SlideBar/Sidebar.js"></script>
    <script src="./Components/SlideBar/main.js"></script>
    <script src="./Components/Footer/Footer.js"></script>
    <script src="./Components/Header/Header.js"></script>

    <script type="text/javascript" src="./Pages/Catalog/ProductEdit/main.js"></script>
</body>

</html>