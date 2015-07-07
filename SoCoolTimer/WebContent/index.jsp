<html>
<head>
<title>So Cool Timer</title>

<script type="text/javascript">
	setInterval("dpTime()", 1000);
	function dpTime() {
		var now = new Date();
		hours = now.getHours();
		minutes = now.getMinutes();
		seconds = now.getSeconds();

		if (hours > 12) {
			hours -= 12;
			ampm = "PM ";
		} else {
			ampm = "AM ";
		}
		if (hours < 10) {
			hours = "0" + hours;
		}
		if (minutes < 10) {
			minutes = "0" + minutes;
		}
		if (seconds < 10) {
			seconds = "0" + seconds;
		}
		document.getElementById("dpTime").innerHTML = ampm + hours + ":"
				+ minutes + ":" + seconds;
	}

	function mary(n) { //배열
		this.length = n;
		for (var i = 1; i < n; i++)
			this[i] = 0;
		return this;
	}

	function bgrandom() { //배경색 바꾸는 함수

		a = new mary(6); //RGB 6자리의 배열 선언
		for (i = 0; i < 6; i++) { //문자형 변수로
			a[i] = new String
		}
		for (i = 0; i < 6; i++) { //각자 랜덤한 수 대입
			a[i] = Math.floor(Math.random() * 16);
			if (a[i] > 10) {
				switch (a[i]) { //10이상일경우 16진수로 바꾸는 작업
				case 10:
					a[i] = "a"
					break;
				case 11:
					a[i] = "b"
					break;
				case 12:
					a[i] = "c"
					break;
				case 13:
					a[i] = "d"
					break;
				case 14:
					a[i] = "e"
					break;
				case 15:
					a[i] = "f"
					break;
				}
			}
		}

		document.bgColor = "#" + a[0] + "" + a[1] + "" + a[2] + "" + a[3] + ""
				+ a[4] + "" + a[5] //색상코드 제작 + 배경색 바꿈

	}
</script>
</head>
<body>
	Current time:
	<div id="dpTime"></div>
	<input type="button" onClick="bgrandom()" value="Change Bgcolor!" />

</body>
</html>