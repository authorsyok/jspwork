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

	out.print("입력된 정수가 " 
			+ num.getNumber1()  
			+ "와 "+ num.getNumber2()  
			+ "와 "+ num.getNumber3()  
			+ "와 "+ num.getNumber4()  
			+ "와 "+ num.getNumber5()  
			+ "에서 가장 큰 수는 " 
			+ num.process(intArray));
%>
</body>
</html>