<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Array" id="num"></jsp:useBean>
<jsp:setProperty property="*" name="num"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	int intArray[] = new int[5];
	intArray[0] = num.getNumber1();
	intArray[1] = num.getNumber2();
	intArray[2] = num.getNumber3();
	intArray[3] = num.getNumber4();
	intArray[4] = num.getNumber5();

	out.print("�Էµ� ������ " 
			+ num.getNumber1()  
			+ "�� "+ num.getNumber2()  
			+ "�� "+ num.getNumber3()  
			+ "�� "+ num.getNumber4()  
			+ "�� "+ num.getNumber5()  
			+ "���� ���� ū ���� " 
			+ num.process(intArray));
%>
</body>
</html>