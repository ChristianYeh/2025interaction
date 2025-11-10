//week10_3_ardiuno
//把joystick的Y的線,經由麵包板幫忙,接到MakerUno 另一邊 A3
//(不能接其他的,因為要接有 ~ 小蟲符號的,符號代表analog訊號)
void setup() {
  pinMode(2,INPUT_PULLUP);
  pinMode(3,INPUT); //有小蟲符號,代表analog訊號
  pinMode(8,OUTPUT); //發出聲音

}

void loop() {
  int now = analogRead(A3);
  if(now>800){ //變高
    tone(8,523,100); //發出523的DO
    delay(100);
    tone(8,784,100); //發出784的SO
    delay(200);
  }else if(now<200){
    tone(8,784,100); //發出784的SO
    delay(100);
    tone(8,523,100); //發出523的DO
    delay(200);
  }

}
