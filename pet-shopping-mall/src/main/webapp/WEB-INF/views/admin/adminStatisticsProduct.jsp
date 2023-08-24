<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp"></jsp:include>

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">상품별 매출</h1>
			
			<div class="card mb-4">
				<div class="card-body">
					카테고리별 매출 top5 이런식으로 보여주고,테이블로 카테고리별로 나워서 상품하나하나 정확한 통계치를 보여줘야됨 
				</div>
			</div>
			<div class="row">
				<div class="col-xl-6">
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> 매출액 순위
						</div>
						<div class="card-body">
							<canvas id="myBarChart-totalPrice" width="100%" height="40"></canvas>
						</div>
					</div>
				</div>
				<div class="col-xl-6">
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-bar me-1"></i> 판매량 순위
						</div>
						<div class="card-body">
							<canvas id="myBarChart-totalSold" width="100%" height="40"></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> 판매 순위
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>순위</th>
								<th>상품코드</th>
								<th>상품명</th>
								<th>카테고리</th>
								<th>상품가격</th>
								<th>판매수량</th>
								<th>판매액</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${productStatistics}" var="productStatistic" varStatus="vs">
								<tr>
									<td>${vs.count}</td>
									<td>${productStatistic.productId}</td>
									<td>${productStatistic.productName}</td>
									<td>${productStatistic.categoryName}</td>
									<td>${productStatistic.productPrice}</td>
									<td>${productStatistic.totalSold}</td>
									<td>${productStatistic.totalPrice}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script>
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

	var labelsProduct = [];
	var labelsPrice = [];
	var totalSold = [];
	var totalPrice = [];

	<c:forEach items="${productStatistics}" var="productStatistic" end="10">
		labelsProduct.push('${productStatistic.productName}');
	    totalSold.push(${productStatistic.totalSold});
	</c:forEach>
	
	<c:forEach items="${priceStatistics}" var="priceStatistic" end="10">
		labelsPrice.push('${priceStatistic.productName}');
	    totalPrice.push(${priceStatistic.totalPrice});
	</c:forEach>
	
	var ctx = document.getElementById("myBarChart-totalSold").getContext("2d");
	var myBarChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels: labelsProduct,
	        datasets: [{
	            label: '판매수량',
	            data: totalSold,  // Use the correct variable name here
	            backgroundColor: 'rgba(2,117,216,1)',
	            borderColor: 'rgba(2,117,216,1)',
	            borderWidth: 1
	        }]
	    },
	    options: {
	        scales: {
	            x: {
	                beginAtZero: true
	            },
	            y: {
	                beginAtZero: true
	            }
	        },
	        responsive: true
	    }
	});
	
	
	var ctx = document.getElementById("myBarChart-totalPrice").getContext("2d");
	var myBarChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels: labelsPrice,
	        datasets: [{
	            label: '매출액',
	            data: totalPrice,  // Use the correct variable name here
	            backgroundColor: 'rgba(2,117,216,1)',
	            borderColor: 'rgba(2,117,216,1)',
	            borderWidth: 1
	        }]
	    },
	    options: {
	        scales: {
	            x: {
	                beginAtZero: true
	            },
	            y: {
	                beginAtZero: true
	            }
	        },
	        responsive: true
	    }
	});
</script>	
<jsp:include page="/WEB-INF/views/admin/adminFooter.jsp"></jsp:include>