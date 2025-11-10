//week10_5_ardiuno_serial_joystick_to_processing
//修改自week10_4
//不使用 Serial.println() 改用 Serial.write() 0-1023 vs. 0-255 差4倍
void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}

void loop() {
  delay(30); //改慢點,才不會太粗糙
  int now = analogRead(A3) / 4; //要除以4,才能順利送出
  Serial.write(now); //把0-255數值送出去
  if(now>200) tone(8,784,100);
  if(now<50) tone(8,523,100); 

}
