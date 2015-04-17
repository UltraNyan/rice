var d = new Date();
var n = d.getHours(); 

if (n >= 0 && n < 5) {
	document.getElementById('greeting').innerHTML="こんばんは";
} else if (n >= 5 && n < 12) {
	document.getElementById('greeting').innerHTML="おはよ";
} else if (n >= 12 && n <18) {
	document.getElementById('greeting').innerHTML="こにちは";
} else {
	document.getElementById('greeting').innerHTML="こんばんは";
};