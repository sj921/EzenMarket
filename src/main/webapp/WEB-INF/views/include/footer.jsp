<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>푸터</title>

<style>

     #wrapper {
     	 height : auto;
 		/*  min-height: 100%; */
       	padding-bottom: 300px;
    } 
    
    .footer_item {
        height: 300px;
        position : relative;
  		transform : translateY(-100%);
    	display: flex;
        flex-direction: column;
        color: white; 
        background-color:  #373737;
        text-align: center;
    	
    }

    .section1 {
      
        list-style: none;
    }

    .section2 {

        padding-bottom: 20px;
    }

</style>

</head>
<body>


	<div id="wrapper">
	</div>

	<footer class="footer_item">
	
        <ul class="section1">
            <li class="text">
                (주)EzenMarket
                대표이사 : 박성연, 배성훈, 남원일, 김민아, 김수지 , 김인재    |   개인정보보호책임자 : 이윤배
            <li class="text">
                사업자등록번호 : 123-45-67890   |   통신판매업신고 : 2019-서울서초-1126
            </li>    
            <li class="text">
                호스팅서비스 제공자 : Amazon Web Services (AWS)
            </li>   
            <li class="text">
                EMAIL : ezen@ezen.co.kr   |   FAX : 02-123-1234
            </li>
            <li class="text">
                주소 : 서울특별시 서초구 서초대로 38길 12, 7, 10층(서초동, 마제스타시티, 힐스테이트 서리풀)
            </li>    
        </ul>

 	   	<nav class="section2">
       	     <a href="">이용약관</a>
       	     <a href="">개인정보처리방침</a>
  	    </nav>
    
    	<div class="section3">“Ezenmarket” 상점의 판매상품을 제외한 모든 상품들에 대하여 (주)Ezenmarket는 통신판매중개자로서 거래 당사자가 아니며 판매 회원과 
          구매 회원 간의 상품거래 정보 및 거래에 관여하지 않고 어떠한 의무와 책임도 부담하지 않습니다.
   	    </div>

    </footer>	




    
</body>
</html>