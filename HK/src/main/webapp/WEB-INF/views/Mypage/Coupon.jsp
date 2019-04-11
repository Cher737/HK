<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><div id="MypageMaintitle" >쿠폰혜택</div>
	<table>
		<tr>
			<td align="center">
				<table id="MyCouponSelectTable">
					<tr>
						<td><div id="Couponselectdiv">조회기간</div></td>
						<td>
							<div class="Couponselectclick">1개월</div>
						</td>
						<td>
							<div class="Couponselectclick">3개월</div>
						</td>
						<td>
							<div class="Couponselectclick">6개월</div>
						</td>
						<td id="widthtd"></td>
						<td><input></td>
						<td>
							<div class="Couponselectcalendardiv">
								<img src="resources/img/calendar.png">
							</div>
						</td>
						<td id="swung">~</td>
						<td><input></td>
						<td><div class="Couponselectcalendardiv">
								<img src="resources/img/calendar.png">
							</div></td>
						<td><button>조회</button></td>

					</tr>
				</table>

			</td>
		<tr>
			<td>
				<table id="MyCouponTable">
					<tr>
						<td class="Couponnametd">쿠폰명</td>
						<td class="Coupondiscounttd">할인액(률)</td>
						<td class="Couponexptd">유효기간</td>
						<td class="Couponstatetd">사용여부</td>
					</tr>
					<c:if test="${Coupon == null }">
					<tr><td class="NotCoupon" colspan="4">쿠폰 정보가 없습니다.</td></tr>
					</c:if>
					<c:if test="${Coupon != null }">
					<c:forEach var="my" items="${MyCoupons}">
					<c:if test="${my.uc_discount > 0 }">
					<tr>
						<td class="Couponnametd2">${my.uc_name}</td>
						<td class="Coupondiscounttd2">${my.uc_discount} 원</td>
						<td class="Couponexptd2"><fmt:formatDate value="${my.uc_exp}" pattern="yyyy-MM-dd"/> 까지</td>
						<c:if test="${my.uc_used =='o'}">
						<td class="Couponstatetd2">사용</td>
						</c:if>
						<c:if test="${my.uc_used =='x'}">
						<td class="Couponstatetd2">미사용</td>
						</c:if>
					</tr>
					</c:if>
					<c:if test="${my.uc_discountrate > 0 }">
					<tr>
						<td class="Couponnametd2">${my.uc_name}</td>
						<td class="Coupondiscounttd2">${my.uc_discountrate} %</td>
						<td class="Couponexptd2"><fmt:formatDate value="${my.uc_exp}" pattern="yyyy-MM-dd"/>  까지</td>
						<c:if test="${my.uc_used =='o'}">
						<td class="Couponstatetd2">사용</td>
						</c:if>
						<c:if test="${my.uc_used =='x'}">
						<td class="Couponstatetd2">미사용</td>
						</c:if>
					</tr>
					</c:if>
					</c:forEach>
					</c:if>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center">
			<form id="Couponinsertform" action="Mypage.Coupon.insert" method="post">
			<table id="Couponinputtable">
					<tr>
						<td id="Couponinputtexttd">메일, 문자, SNS 등에서 <span>쿠폰 인증번호</span>를 받은 경우 인증번호를 등록해주세요.</td>
					</tr>
					<tr>
						<td id="Couponinputtd"><input name="r_number"><button>등록</button></td>
					</tr>
				</table>
			</form>
				</td>
		</tr>
	</table>
</body>
</html>