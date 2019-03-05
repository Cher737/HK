<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><div id="MypageMaintitle" >출국일정보</div>
<table>
		<tr>
			<td align="center">
				<table id="LeaveperiodTable">
					<tr>
						<td><div id="Leaveperioddiv">조회기간</div></td>
						<td>
							<div class="Leaveperiodclick">1개월</div>
						</td>
						<td>
							<div class="Leaveperiodclick">3개월</div>
						</td>
						<td>
							<div class="Leaveperiodclick">6개월</div>
						</td>
						<td id="widthtd"></td>
						<td><input></td>
						<td>
							<div class="Leaveperiodcalendardiv">
								<img src="resources/img/calendar.png">
							</div>
						</td>
						<td id="swung">~</td>
						<td><input></td>
						<td><div class="Leaveperiodcalendardiv">
								<img src="resources/img/calendar.png">
							</div></td>
						<td><button>조회</button></td>

					</tr>
				</table>

			</td>
		<tr>
			<td>
				<table id="LeaveMainTable">
					<tr>
						<td class="Couponnametd">출국일시</td>
						<td class="Coupondiscounttd">편명</td>
						<td class="Couponexptd">등록일자</td>
						<td class="Couponstatetd">수정/삭제</td>
					</tr>
					<tr>
						<td class="Couponnametd2">2019-03-08 11:05</td>
						<td class="Coupondiscounttd2">KE5675</td>
						<td class="Couponexptd2">2019-03-04</td>
						<td class="Couponstatetd2"><button>수정</button><button>삭제</button></td>
					</tr>
					<tr>
						<td class="Couponnametd2">2019-04-02 17:05</td>
						<td class="Coupondiscounttd2">KE5525</td>
						<td class="Couponexptd2">2019-03-04</td>
						<td class="Couponstatetd2"><button>수정</button><button>삭제</button></td>
					</tr>
					

				</table>
			</td>
		</tr>
	</table>
</body>
</html>