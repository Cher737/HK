<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="CounselingTable">
		<tr>
			<td id="CounselingTableMain" colspan="2">1:1 문의</td>
		</tr>
		<tr>
			<td class="CounselingTableMenu">이름</td>
			<td class="CounselingTableInputshortTd"><input></td>
		</tr>
		<tr>
			<td class="CounselingTableMenu">휴대폰번호</td>
			<td class="CounselingTableInputshortTd"><input>
			<button>변경</button></td>
		</tr>
		<tr>
			<td class="CounselingTableMenu">E-mail</td>
			<td class="CounselingTableInputshortTd"><input>
				<button>변경</button></td>
		</tr>
		<tr>
			<td class="CounselingTableMenu">문의유형</td>
			<td class="CounselingTableInputshortTd"><select><option>문의유형</option></select></td>
		</tr>
		<tr>
			<td class="CounselingTableMenu">제목</td>
			<td class="CounselingTableInputTd"><input></td>
		</tr>
		<tr>
			<td valign="top" class="CounselingTablecontent">내용</td>
			<td class="CounselingTableInputTd"><textarea></textarea></td>
		</tr>
		<tr>
			<td class="CounselingTableMenu">이미지</td>
			<td class="CounselingTableInputTd"><input id="Counselingfileinput"  type="file">
			<button>삭제</button></td>
		</tr>
		<tr>
			<td colspan="2" align="center" id="CounselingButtontd"><button>문의하기</button></td>
		</tr>
	</table>
</body>
</html>