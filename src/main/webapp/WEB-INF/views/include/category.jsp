<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> <!-- 부트스트랩-->
    

<style>

      a:link {
        text-decoration: none;
      }

      a {
        color: black;
      }
      
      
      
       .link-dark {
        margin-left: 70px;
        font-size: 15px;
        color: hsla(0, 1%, 15%, 0.651);

      } 
      .dropbarBtn {
  
        font-size: 20px;
        color: hsla(0, 0%, 0%, 0.651);
      }
  

	 #Category {
        /* overflow:visible; */
        float: left;
        margin-left: 200px;
        margin-top:  50px;
        
        /* box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15); */
      }
	
</style>
<title>카테고리</title>
</head>
<body>

	   <div class="flex-shrink-0 p-2 bg-white dropbar" id="Category" style="width: 220px;">
            <!-- <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom"> -->
              <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
              <span class="fs-5 fw-semibold"></span>
            <!-- </a> -->
            <ul class="list-unstyled ps-0">
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0= collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                  ALL
                </button>
                <!-- collapse show 누르기 전에 보이는 것 -->
                <div class="collapse" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Updates</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Reports</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                 SHOES
                </button>
                <div class="collapse" id="dashboard-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button  class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
                  WOMEN
                </button>
                <div class="collapse" id="orders-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Processed</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Shipped</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Returned</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#a-collapse" aria-expanded="false">
                  MAN
                </button>
                <div class="collapse" id="a-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#sport-collapse" aria-expanded="false">
                  SPORT
                </button>
                <div class="collapse" id="sport-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#baby-collapse" aria-expanded="false">
                  BABY
                </button>
                <div class="collapse" id="baby-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#acc-collapse" aria-expanded="false">
                  ACC
                </button>
                <div class="collapse" id="acc-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#beauty-collapse" aria-expanded="false">
                  BEAUTY
                </button>
                <div class="collapse" id="beauty-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#pet-collapse" aria-expanded="false">
                  PET
                </button>
                <div class="collapse" id="pet-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#brand-collapse" aria-expanded="false">
                  BRAND
                </button>
                <div class="collapse" id="brand-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#bag-collapse" aria-expanded="false">
                  BAG
                </button>
                <div class="collapse" id="bag-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#new-collapse" aria-expanded="false">
                  <span style="color: red;">NEW</span>
                </button>
                <div class="collapse" id="new-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>

              <!-- border-top 클래스 안에 원래 넣어야 함 -->
              <li class=" my-3"></li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#d-collapse" aria-expanded="false">
                  문의
                </button>
                <div class="collapse" id="d-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New...</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Profile</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Settings</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Sign out</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
          
           <!-- 부트스트랩 자바스크립트-->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        
          
    
	

</body>
</html>