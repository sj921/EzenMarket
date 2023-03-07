<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
      <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>구리이젠 팀프로젝트 </span>
                    </div>
                </div>
            </footer>
        

        </div>

    </div>
    
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">로그아웃을 누를시 진행상황이 저장되지 않습니다.</div>
                <div class="modal-footer">
                    <a class="btn btn-primary" href="login.html">로그아웃</a>
                    <button class="btn btn-secondary " type="button" data-dismiss="modal" >취소</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/demo/datatables-demo.js"></script>
	
	 <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/demo/chart-area-demo.js"></script>
    
    <!-- report scripts -->
    <script>
      const reportTypeCells = document.querySelectorAll('#report-type');
      reportTypeCells.forEach(cell => {
        const reportType = parseInt(cell.textContent);
        switch (reportType) {
          case 1:
            cell.textContent = '유저';
            break;
          case 2:
            cell.textContent = '게시물';
            break;
          case 3:
              cell.textContent = '채팅';
              break;
          case 4:
              cell.textContent = '리뷰';
              break;
          default:
            cell.textContent = reportType;
            break;
        }
      });
	</script>
    <script src="${pageContext.request.contextPath}/resources/js/demo/chart-pie-demo.js"></script>
	<!-- <script>
	$(document).ready(function() {
	
	$('#dataTables-example').DataTable({
					responsive : true
				});
				$(".sidebar-nav").attr("class", "sidebar-nav navbar-collapse")
						.attr("aria-expanded", 'false').attr("style",
								"height:1px");
			});
</script> -->

</body>

</html>