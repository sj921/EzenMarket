<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>



<%@include file="./includes/header.jsp" %>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <img style="height: 50px" src="https://yt3.googleusercontent.com/pkRP06hNZDk-Hs1gAN6yf_qdDm5IEtUS03orIyqXflOcl24_zj0H_Guw3l864RaDmLaXIY6IUnc=s88-c-k-c0x00ffffff-no-rj"/ >
                   
                <div class="sidebar-brand-text mx-3">BrickUp <sup>Market</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="mainpage">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>메인 페이지</span></a>
            </li>

         

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                관리 페이지
            </div>

            <!-- Nav Item - Charts -->
            
            
            
           <li class="nav-item active">
                <a class="nav-link" href="userlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>유저 관리</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="postlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>게시물 관리</span></a>
            </li>
            
            <li class="nav-item ">
                <a class="nav-link" href="chattinglist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>채팅 관리</span></a>
            </li>
            
            <li class="nav-item ">
                <a class="nav-link" href="reviewlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>리뷰 관리</span></a>
            </li>
            
            <li class="nav-item ">
                <a class="nav-link" href="reportlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>신고 관리</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                   

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>


                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin1</span>
                                <img class="img-profile rounded-circle"
                                    src="${pageContext.request.contextPath}/resources/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            
                           <%@include file="./includes/login.jsp" %>
                           
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">유저 목록</h1>
               

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">유저 목록</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>유저 번호</th>
                                            <th>이름</th>
                                            <th>ID</th>
                                            <th>닉네임</th>
                                            <th>전화번호</th>
                                            <th>이메일</th>
                                            <th>BAN 여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%--  <c:forEach items="${list}" var="board">
                                        <tr>
                                            <td>${board.user_Number }</td>
                                            <td>${board.user_Name }</td>
                                            <td>${board.user_ID }</td>
                                            <td>${board.nickname }</td>
                                            <td>${board.phonenumber}</td>
                                            <td>${board.email }</td>
                                            <td>${board.bannerDate }</td>
                                        </tr>
                                        </c:forEach> --%>
                                        
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr> 
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>
                                       
                                         <tr>
                                            <td>1</td>
                                            <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                             <td>1</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>

<%@include file="./includes/footer.jsp" %>

