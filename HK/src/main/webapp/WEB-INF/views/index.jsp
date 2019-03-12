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
<script src="resources/js/index.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<body>
	<table id="maintable">
		<tr>
			<td>
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
				<td id="CATE1" class="menu1">화장품/향수
				</td>
				</tr>
				<tr>	
				<td id="CATE2" class="menu1">패션/잡화</td></tr>
				<tr><td id="CATE3" class="menu1">시계/주얼리</td></tr>
				<tr><td id="CATE4" class="menu1">전자제품</td></tr>
				<tr><td id="CATE5" class="menu1">식품</td></tr>
		<tr><td id="catezero"></td></tr>
	</table>
	
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

<table id="CATETABLE1" class="CATETABLE">
					<tr>
						<td class="cates2">스킨케어</td>
					</tr>
					<tr>
						<td class="cates2">메이크업</td>
					</tr>
					<tr>
						<td class="cates2">썬케어/클렌징</td>
					</tr>
					<tr>
						<td class="cates2">헤어</td>
					</tr>
					<tr>
						<td class="cates2">바디</td>
					</tr>
					<tr>
						<td class="cates2">향수</td>
					</tr>
					<tr><td></td></tr>
</table>
<table id="CATETABLE2" class="CATETABLE">
					<tr>
						<td class="cates2">가방</td>
					</tr>
					<tr>
						<td class="cates2">지갑</td>
					</tr>
					<tr>
						<td class="cates2">벨트</td>
					</tr>
					<tr>
						<td class="cates2">선글라스</td>
					</tr>
					<tr>
						<td class="cates2">의류</td>
					</tr>
					<tr>
						<td class="cates2">슈즈</td>
					</tr>
					<tr>
						<td class="cates2">패션소품</td>
					</tr>
					<tr>
						<td class="cates2">LIFESTYLE</td>
					</tr>
</table>
<table id="CATETABLE3" class="CATETABLE">
					<tr>
						<td class="cates2">클래식시계</td>
					</tr>
					<tr>
						<td class="cates2">패션/스포츠시계</td>
					</tr>
					<tr>
						<td class="cates2">주얼리</td>
					</tr>
					<tr>
						<td class="cates2">장식소품</td>
					</tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					
</table>
<table id="CATETABLE4" class="CATETABLE">
					<tr>
						<td class="cates2">카메라/캠코더</td>
					</tr>
					<tr>
						<td class="cates2">휴대기기</td>
					</tr>
					<tr>
						<td class="cates2">음향기기</td>
					</tr>
					<tr>
						<td class="cates2">가전제품</td>
					</tr>
					<tr>
						<td class="cates2">주변기기</td>
					</tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					
</table>
<table id="CATETABLE5" class="CATETABLE">
					<tr>
						<td class="cates2">건강식품</td>
					</tr>
					<tr>
						<td class="cates2">선호식품</td>
					</tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					<tr><td></td></tr>
					
</table>
</body>
</html>