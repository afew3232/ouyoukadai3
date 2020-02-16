
do{
		var user_hand = prompt('じゃんけんの手をグー、チョキ、パーから選んでください');//プロンプト作成
		if(user_hand == "グー" || user_hand =="チョキ" || user_hand == "パー"|| user_hand == null)break;
}while(true);

var js_hand = getJShand(); //じゃんけんの手をランダムに生成

var judge = winLose(user_hand, js_hand); //判定

if(user_hand != null){
	alert("あなたは"+user_hand+"です。\nJavaScriptは、"+js_hand+"です。\n勝敗は"+judge+"です。");
}else{
	alert("またチャレンジしてね");
}

function getJShand(){
	var js_hand_num = Math.floor( Math.random() *3);
	var hand_name;

	if(js_hand_num == 0){			hand_name = "グー";}
	else if(js_hand_num == 1){		hand_name =　"チョキ";}
	else{							hand_name = "パー";}

	return hand_name;
}

function winLose(user,js){
	var winLoseStr;

	if(user == "グー"){
		if(js == "グー"){	winLoseStr = "あいこ";}
		else if(js == "チョキ"){winLoseStr = "かち";}
		else{winLoseStr = "まけ";}
	}else if(user == "チョキ"){
		if(js == "グー"){	winLoseStr = "まけ";}
		else if(js == "チョキ"){winLoseStr = "あいこ";}
		else{winLoseStr = "かち";}
	}else if(user == "パー"){
		if(js == "グー"){	winLoseStr = "かち";}
		else if(js == "チョキ"){winLoseStr = "まけ";}
		else{winLoseStr = "あいこ";}
	}
	return winLoseStr;
}