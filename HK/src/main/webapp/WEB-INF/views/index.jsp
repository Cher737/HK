<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<script src="resources/js/jquery.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="resources/js/main.js"></script>
<script type="text/javascript">
	$(function() {
		$("#Supportgo").click(function() {
			location.href = "Support.FAQ";
		});

	});
</script>
</head>
<body>
	<table id="maintable">
		<tr>
			<td align="center">
				<table id="bodytable">
					<tr>
						<td align="center"><table>
								<tr>
									<td align="center" id="titlesearchtd">
										<table>
											<tr>
												<td><input id="titlesearch"></td>
												<td><img id="titlesearchimg"
													src="resources/img/search.png"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						<td id="titlecarttd" align="center"><img
							src="resources/img/shopping-cart.png"></td>
						<td id="titlemypagetd" align="right"><a href="Mypage.main"><img
								src="resources/img/mypage.png"></a>
							<table id="Mymenutable1">
								<tr>
									<td><a href="login.go">로그인</a></td>
								</tr>
								<tr>
									<td><a href="join.go">회원가입</a></td>
								</tr>
							</table></td>
					</tr>
					<tr>
						<td colspan="3" align="center" id="centerpagetd"><jsp:include
								page="${centerpage}"></jsp:include></td>
					</tr>
					<tr>
						<td><table>
								<tr>
									<td><br><br><br><br><br><br><br></td>
								</tr>
							</table></td>
					</tr>
				</table>
	</table>



	<table id="categorytable">
		<tr>
			<td id="titlelogotd"><table>
					<tr>
						<td><a href="home"><img src="resources/img/HK.jpg"></a></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td id="categorymain">카테고리</td>
		</tr>
		<tr>
			<td valign="top"><p>
				<div class="menu1">
					<a href="product">스킨케어/메이크업</a>
				</div>
				<div class="menu1"><a href="Mypage.Buy">향수/바디/헤어</a></div>
				<div class="menu1">가방/지갑</div>
				<div class="menu1">시계/주얼리</div>
				<div class="menu1">패션/잡화</div>
				<div class="menu1">디지털/전자담배</div>
				<div class="menu1">식품/리빙</div></td>
		</tr>
	</table>
	<!--  <table>
					<tr>
						<td>기초케어</td>
					</tr>
					<tr>
						<td>클렌징</td>
					</tr>
					<tr>
						<td>남성케어</td>
					</tr>
					<tr>
						<td>선케어</td>
					</tr>
					<tr>
						<td>미용기기</td>
					</tr>
					<tr>
						<td>유아동케어</td>
					</tr>

				</table>-->
	<table id="subtable">
		<tr>
			<td align="center"><div class="submenuimgdiv">
					<img src="resources/img/coin.png" class="submenuimg">
				</div> 금일 환율</td>
		</tr>
		<tr>
			<td align="center"><div class="submenuimgdiv">
					<img src="resources/img/time.png" class="submenuimg">
				</div> 주문가능<br>시간조회</td>
		</tr>
		<tr>
			<td align="center">
				<div class="submenuimgdiv">
					<img src="resources/img/airplane.png" class="submenuimg">
				</div> 출국 정보
			</td>
		</tr>
		<tr>

			<td align="center"><div class="submenuimgdiv">
					<img src="resources/img/vip.png" class="submenuimg">
				</div>멤 버 쉽</td>
		</tr>
	</table>

</body>
</html>