//week01_2_keyPressed_textSize_text_key
void setup(){
  size(500, 500);
}
void draw(){ //用鍵盤來互動
  if(keyPressed){ //記得關掉注音
    background(#FF0000); //紅色背景
    textSize(80); //大字型
    text(""+key, 100, 100);
  }
}
