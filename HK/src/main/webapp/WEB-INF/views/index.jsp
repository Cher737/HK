<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HK 인터넷 면세점</title>
<link rel="stylesheet" href="resources/css/index.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery.number.js"></script>
<script src="resources/js/go.js"></script>
<script src="resources/js/index.js"></script>
<script src="resources/js/check.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js"
	type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	rateinput();
});
</script>
</head>
<body>
	<table id="maintable">
		<tr>
			<td>
				<table id="titletable">
					<tr>
						<td align="center">
							<table id="titlesearchtable">
								<tr>
									<td id="titlesearchtd">
										<table>
											<tr>
												<td><input id="titlesearch"></td>
												<td><img id="titlesearchimg"
													src="resources/img/search.png"></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td id="top10td"><table id="top10table"></table></td>
								</tr>
							</table>
						</td>
						<td id="titlecarttd" align="center"><a href="bucket"><img
								src="resources/img/shopping-cart.png"></a></td>
						<td id="titlemypagetd" align="right"><img id="mypageimg"
							src="resources/img/mypage.png"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table id="bodytable">
					<tr>
						<td><c:if test="${sessionScope.loginMember == null}">
								<table id="Mymenutable1">
									<tr>
										<td><a href="login.go">로그인</a></td>
									</tr>
									<tr>
										<td><a href="join.go">회원가입</a></td>
									</tr>
								</table>
							</c:if> <c:if test="${sessionScope.loginMember != null}">
								<table id="Mymenutable1">
									<tr>
										<td>${sessionScope.loginMember.u_name }님</td>
									</tr>
									<tr>
										<td><a href="logout.go">로그아웃</a></td>
									</tr>
									<tr>
										<td><a href="memberinfo">회원정보</a></td>
									</tr>
									<tr>
										<td><a href="memberupdate.go">정보수정</a></td>
									</tr>

								</table>
							</c:if></td>
					</tr>
					<tr>
						<td colspan="3" align="center" id="centerpagetd"><jsp:include
								page="${centerpage}"></jsp:include></td>
					</tr>
					<tr>
						<td><table>
								<tr>
									<td><br> <br> <br> <br> <br> <br>
										<br></td>
								</tr>
							</table>
						<td><table id="subtable">
								<tr>
									<td align="center"><select name="moneyselect"
										id="moneyselect">

											<option value="￦">원(￦)</option>
											<option value="￥">엔(￥)</option>
											<option value="元">위안(元)</option>
											<option value="€">유로(€)</option>

									</select></td>
								</tr>
								<tr>
									<td align="center"><div class="submenuimgdiv">
											<img src="resources/img/coin.png" class="submenuimg">
										</div> 금일 환율
										<div id="todaymoneydiv">
											<span id="todaymoneyspan1">
											${rateResult.er_rate }
											</span><span
												id="todaymoneyspan2"></span>
										</div></td>
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
							</table></td>
					</tr>
				</table>
			</td>
		</tr>
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
			<td id="CATE1" class="menu1">화장품/향수</td>
		</tr>
		<tr>
			<td id="CATE2" class="menu1">패션/잡화</td>
		</tr>
		<tr>
			<td id="CATE3" class="menu1">시계/주얼리</td>
		</tr>
		<tr>
			<td id="CATE4" class="menu1">전자제품</td>
		</tr>
		<tr>
			<td id="CATE5" class="menu1">식품</td>
		</tr>
		<tr>
			<td id="catezero"></td>
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
		<tr>
			<td></td>
		</tr>
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
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>

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
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>

	</table>
	<table id="CATETABLE5" class="CATETABLE">
		<tr>
			<td class="cates2">건강식품</td>
		</tr>
		<tr>
			<td class="cates2">선호식품</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>

	</table>
</body>
</html>