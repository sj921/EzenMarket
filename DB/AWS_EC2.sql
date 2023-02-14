CREATE TABLE userlist (

    user_Number NUMBER(10)
    CONSTRAINT user_Number_pk primary key,
    
    user_Name VARCHAR2(20)
    CONSTRAINT user_Name_NN NOT NULL,
    
    user_ID VARCHAR2(20)
    CONSTRAINT user_Id_unique unique
    CONSTRAINT user_Id_NN NOT NULL,
    
    user_PW VARCHAR2(50)
    CONSTRAINT user_PW_NN NOT NULL,
    
    nickname VARCHAR2(70)
    CONSTRAINT nickname_unique unique
    CONSTRAINT nickname_NN NOT NULL,
    
    phoneNumber VARCHAR2(20)
    CONSTRAINT phoneNumber_unique unique
    CONSTRAINT phoneNumber_NN NOT NULL,
     
    email VARCHAR2(50)
    CONSTRAINT email_unique unique
    CONSTRAINT email_NN NOT NULL,
    
    user_image VARCHAR(255),
    
    bannedDate DATE default sysdate);
    
CREATE TABLE city(

   city_id NUMBER(10)
   CONSTRAINT city_id_pk primary key,
   
   city_name VARCHAR2(30)
   CONSTRAINT city_name_nn NOT NULL,
   
   district VARCHAR2(150)
   CONSTRAINT district_nn NOT NULL
);

CREATE TABLE address(

    address_id NUMBER(10)
    CONSTRAINT address_id_pk primary key,
    
    user_number NUMBER(11)
    CONSTRAINT address_user_number_fk REFERENCES userlist (user_number),
    
    city_id NUMBER(10)
    CONSTRAINT address_city_id_fk REFERENCES city (city_id)
);

CREATE TABLE category(

    category_id NUMBER(10)
    CONSTRAINT category_id_pk primary key,
    
    category_name VARCHAR2(30)
    CONSTRAINT category_name_unique unique
    CONSTRAINT category_name_nn NOT NULL
    );

CREATE TABLE post (

    post_id NUMBER(10)
    CONSTRAINT post_id_pk primary key,
    
    user_number NUMBER(10)
    CONSTRAINT post_user_number_fk REFERENCES userlist (user_number),
    
    address_id NUMBER(10)
    CONSTRAINT post_address_id_fk REFERENCES address (address_id),
    
    title VARCHAR2(150)
    CONSTRAINT title_nn NOT NULL,
    
    category_id NUMBER(10)
    CONSTRAINT post_category_id_fk REFERENCES category (category_id),
    
    price NUMBER(9),
    
    created DATE default sysdate,
    
    updated DATE,
    
    post_view NUMBER(9)default 0 
    
);
    
CREATE TABLE postContent(

    post_id NUMBER(10)
    CONSTRAINT postContent_post_id_fk REFERENCES post (post_id),
    
    content VARCHAR2(1500)
);

CREATE TABLE postImage(
    
    post_image_id NUMBER(10)
    CONSTRAINT post_image_id_pk primary key,
    
    post_id NUMBER(10)
    CONSTRAINT postImage_post_id_fk REFERENCES post (post_id),
    
    image_url VARCHAR2(250)
    CONSTRAINT image_url_nn NOT NULL

);

CREATE TABLE wishList (
    
    wishList_id NUMBER(10)
    CONSTRAINT wishList_id_pk primary key,
    
    user_number NUMBER(10)
    CONSTRAINT wishList_user_number_fk REFERENCES userlist (user_number),
    
    post_id NUMBER(10)
    CONSTRAINT wishList_post_id_fk REFERENCES post (post_id)
    
);

CREATE TABLE chattingRoom (

    chattingRoom_id NUMBER(10)
    CONSTRAINT chattingRoom_id_pk primary key,
    
    seller_user_number NUMBER(10)
    CONSTRAINT seller_user_number_nn NOT NULL,
    
    buyer_user_number NUMBER(10)
    CONSTRAINT buyer_user_number_nn NOT NULL
    
);

CREATE TABLE chattingContent(
    
    chatting_content_id NUMBER(10)
    CONSTRAINT chatting_content_id_pk primary key,
    
    chattingRoom_id NUMBER(10)
    CONSTRAINT content_chattingRoom_id_fk 
    REFERENCES chattingRoom (chattingRoom_id),
    
    user_number NUMBER(10)
    CONSTRAINT content_user_number_fk REFERENCES userlist (user_number),
    
    contents VARCHAR2(4000),
    
    chatting_date DATE default sysdate
);

CREATE TABLE endPOST (
    
    endDeal_id NUMBER(10)
    CONSTRAINT endDeal_id_pk primary key,
    
    seller_user_id

);

drop table chattingContent
