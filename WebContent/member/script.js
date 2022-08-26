function check_ok() {
	if (document.javascript.user_id.value.length == 0) {
  		alert("아이디를 입력해 주세요!");
  		javascript.user_id.focus();
  		return;
 	}

 	if (document.javascript.user_id.value.length < 4) {
	  	alert("아이디는 4글자 이상이어야 합니다!");
	  	javascript.user_id.focus();
	 	return;
 	}

 	if (document.javascript.password.value == "") {
  		alert("비밀번호는 반드시 입력해야 합니다.");
  		javascript.password.focus();
  		return;
 	}
 
 	if (document.javascript.password.value != document.javascript.password_check.value) {
  		alert("패스워드가 일치하지 않습니다.");
  		javascript.password.focus();
  		return;
 	}

 	if (document.javascript.user_name.value.length == 0) {
  		alert("이름을 써주세요!");
  		javascript.user_name.focus();
  		return;
 	}
 	
	if (document.javascript.user_email.value.length == 0) {
  		alert("이메일을 써주세요!");
  		javascript.user_email.focus();
  		return;
 	}
 	document.javascript.submit();
}