function cert_pw_check(){ 
	var l_pw		=	document.getElementById("userpassword");
	

	document.getElementById("rsa_key").value="C4E3F7212602E1E396C0B6623CF11D26204ACE3E7D26685E037AD2507DCE82FC\n28F2D5F8A67FC3AFAB89A6D818D1F4C28CFA548418BD9F8E7426789A67E73E41";
	document.getElementById("rsa_n").value="10001";


	if(l_pw.value==""){
		alert("비밀번호를 입력해주세요.");
		l_pw.focus();
		return false;
	}
 
 
	  var rsa2 = new RSAKey();
	   rsa2.setPublic(document.getElementById("rsa_key").value,document.getElementById("rsa_n").value);
	   var rsa2 = rsa2.encrypt(l_pw.value);
		if(rsa2) {
			document.getElementById("encode_pw_data").value = linebrk(rsa2, 64);
		}
		  
		l_pw.value="";
		document.getElementById("rsa_key").value = "";
		document.getElementById("rsa_n").value = "";
  
	document.form1.action="my_info_edit.asp";
	document.form1.submit();
 
}