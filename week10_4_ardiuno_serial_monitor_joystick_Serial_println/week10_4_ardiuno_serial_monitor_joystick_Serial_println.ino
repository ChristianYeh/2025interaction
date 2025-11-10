//week10_4_ardiuno_serial_monitor_joystick_Serial_println
//把joystick的Y的線,經由麵包板幫忙,接到MakerUno 另一邊 A3
//(不能接其他的,因為要接有 ~ 小蟲符號的,符號代表analog訊號)
void setup() {
  Serial.begin(9600); //開啟USB傳輸
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT); //發出聲音

}

void loop() { //秒鐘,會跑1000Hz
  delay(100); //慢一點,避免processing處理不及
  int now = analogRead(A3);
  Serial.println(now);
  //想利用 Serial Monitor 來看看會送出甚麼訊號
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
