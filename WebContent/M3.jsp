<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">


function check(){

	// 「OK」時の処理開始 ＋ 確認ダイアログの表示
	if(window.confirm('登録して良いですか？')){
		window.alert('登録されました'); 
		return ture;

	}
	else{

		window.alert('キャンセルされました'); // 警告ダイアログを表示
		return false;

	}
	// 「キャンセル」時の処理終了

}

</script>

<title>会員情報登録</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<p>会員情報登録</p>
<br>
<body>

	<form action ="MemberCheck.html" method="POST" onSubmit="return check()">
	協賛企業名<br>
	<input type="text" name="companyName"><br><br>
	会員番号<br>
	<input type="text" name="memberNo"><br><br>
	氏名<br>
	<input type="text" name="name"><br><br>
	フリガナ<br>
	<input type="text" name="furigana"><br><br>
	所属名<br>
	<input type="text" name="job"><br><br>
	連絡先電話番号<br>
	<input type="text" name="phoneNumber"><br><br>
	連絡先区分<br>
	<input type="text" name="category"><br><br>
	入会日<br>
	<input type="text" cmanCLDat="USE:ON" name="nichiji">
	<br><br>
	与信額<br>
	<input type="text" name="creditAmount"><br><br>
	備考<br>

	<textarea  name="notes"  cols=40 rows=4>
	</textarea><br><br>
	<input type="submit" value="登録" ><br><br>

	</form>

		<hr>
	<p><a href ="MemberCheck.html">会員情報管理画面に戻る</a></p>

</body>
</html>