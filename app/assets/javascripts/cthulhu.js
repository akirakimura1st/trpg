function randomStatusBtn() {
	var str = 2 + Math.floor(Math.random() * 17);
	var con = 2 + Math.floor(Math.random() * 17);
	var pow = 2 + Math.floor(Math.random() * 17);
	var dex = 2 + Math.floor(Math.random() * 17);
	var app = 2 + Math.floor(Math.random() * 17);
	var int = 2 + Math.floor(Math.random() * 17);
	var siz = 2 + Math.floor(Math.random() * 17);
	var edu = 6 + Math.floor(Math.random() * 16);
	str = Number(str);
	con = Number(con);
	pow = Number(pow);
	dex = Number(dex);
	app = Number(app);
	int = Number(int);
	siz = Number(siz);
	edu = Number(edu);
	var hitpoint = (con + siz) / 5;
	var magicpoint = pow * 1;
	var default_san = pow * 5;
	var idea = int * 5;
	var luck = pow * 5;
	var knowledge = edu * 5;
	document.getElementById("str").value = str;
	document.getElementById("con").value = con;
	document.getElementById("pow").value = pow;
	document.getElementById("dex").value = dex;
	document.getElementById("app").value = app;
	document.getElementById("siz").value = siz;
	document.getElementById("int").value = int;
	document.getElementById("edu").value = edu;
	document.getElementById("hitpoint").value = Math.ceil(hitpoint);
	document.getElementById("magicpoint").value = magicpoint;
	document.getElementById("default_san").value = default_san;
	document.getElementById("idea").value = idea;
	document.getElementById("luck").value = luck;
	document.getElementById("knowledge").value = knowledge;
}

function randomStatusBtnCrear() {
	document.getElementById("str").value = '';
	document.getElementById("con").value = '';
	document.getElementById("pow").value = '';
	document.getElementById("dex").value = '';
	document.getElementById("app").value = '';
	document.getElementById("siz").value = '';
	document.getElementById("int").value = '';
	document.getElementById("edu").value = '';
	document.getElementById("hitpoint").value = '';
	document.getElementById("magicpoint").value = '';
	document.getElementById("default_san").value = '';
	document.getElementById("idea").value = '';
	document.getElementById("luck").value = '';
	document.getElementById("knowledge").value = '';
}

function keisan() {
	var con = document.getElementById("con").value;
	var pow = document.getElementById("pow").value;
	var siz = document.getElementById("siz").value;
	var int = document.getElementById("int").value;
	var edu = document.getElementById("edu").value;
	con = Number(con);
	pow = Number(pow);
	siz = Number(siz);
	int = Number(int);
	edu = Number(edu);
	var hitpoint2 = (con + siz) / 5 ;
   var magicpoint2 = pow * 1;
	var default_san2 = pow * 5;
	var idea2 = int * 5;
	var luck2 = pow * 5;
	var knowledge = edu * 5;
	document.getElementById("hitpoint").value = Math.ceil(hitpoint2);
	document.getElementById("magicpoint").value = magicpoint2;
	document.getElementById("default_san").value = default_san2;
	document.getElementById("idea").value = idea2;
	document.getElementById("luck").value = luck2;
	document.getElementById("knowledge").value = knowledge;
}