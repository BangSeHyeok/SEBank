<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>asdfsfsafasdfasfsdafsafsadfasdfsadfsadfsafsafasdasdasdasdsdad
	<!-- The core Firebase JS SDK is always required and must be listed first -->
	<!-- 	<script src="https://www.gstatic.com/firebasejs/6.4.0/firebase-app.js"></script> -->

	<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#config-web-app -->
	<!-- firebase -->
	<script src="https://www.gstatic.com/firebasejs/6.2.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/6.2.4/firebase-auth.js"></script>
	<!-- firebaseUI -->
	<script
		src="https://cdn.firebase.com/libs/firebaseui/4.0.0/firebaseui.js"></script>
	<!-- firebase -->
	<script
		src="https://www.gstatic.com/firebasejs/6.2.4/firebase-database.js"></script>
	<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyCRbqX0Pa_2u9MJsmn2PuLpgzj-QgiC4aY",
    authDomain: "webtest-97eeb.firebaseapp.com",
    databaseURL: "https://webtest-97eeb.firebaseio.com",
    projectId: "webtest-97eeb",
    storageBucket: "",
    messagingSenderId: "824097306496",
    appId: "1:824097306496:web:0febe1ef761ee5ce"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  
  </script>
	<script>
//구글 인증 기능 추가

  var provider = new firebase.auth.GoogleAuthProvider();

  // 인증하기
  firebase.auth().signInWithPopup(provider).then(function(result) {
  	// This gives you a Google Access Token. You can use it to access the Google API.
  	var token = result.credential.accessToken;
  	// The signed-in user info.
  	var user = result.user;
  	
  	console.log(user)		// 인증 후 어떤 데이터를 받아오는지 확인해보기 위함.
  // ...
  }).catch(function(error) {
  	// Handle Errors here.
  	var errorCode = error.code;
  	var errorMessage = error.message;
  	// The email of the user's account used.
  	var email = error.email;
  	// The firebase.auth.AuthCredential type that was used.
  	var credential = error.credential;
  	// ...
  });
  var database = firebase.database();
  database.ref('test/').set({"name": "test2", "intro": "hello"});
 /*  //삽입(데이터 덮어쓰기)
  database.ref('test/').push({"name": "테스트", "location": "seoul"})
database.ref('test/').push({"name": "테스트2", "intro": "인삿말"})
//삽입 2 (데이터 추가)
var dbTestRef = database.ref('test/')
dbTestRef.on('child_added', function(data){
	console.log(data.val())
})
//데이터 읽어오기

var dbTestRef = database.ref('test/')
dbTestRef.on('child_added', function(data){
	console.log(data.val(), 'key: ', data.key)
})
//데이터 읽어오기 2

var dbTestRef2 = database.ref('test/' + [key값]).update([수정할 값])
var dbTestRef2 = database.ref('test/-L4eNay35sc0db4oigfO').update({
	intro: "인삿말 수정"	
})
//데이터 수정

dbTestRef3 = database.ref('test/-L4eNay35sc0db4oigfO').remove()
//데이터 삭제 */
</script>
</body>
</html>
