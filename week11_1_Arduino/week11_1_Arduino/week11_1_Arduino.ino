// week11_1_Arduino
// 修改自week10_7_arduino_serial_joystick_x_y_to_processing
void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);
  pinMode(8, OUTPUT);
}
int count=0,totalX=0,totalY=0;
int x0=512,y0=512;
void loop() {
  delay(30); // 要慢一點, 不然 Processing會接不了
  int x = analogRead(A2); // 把搖桿的X接在A2
  int y = analogRead(A3); // 把搖桿的Y接在A3
  if(count<20){
    totalX += x;
    totalY += y;
    count++;
    x0 = totalX / count; //算平均
    y0 = totalY / count;
  }
  if(abs(x-x0)<25) x=128;
  else x = (x-x0)/4.4 + 128;
  if(abs(y-y0)<25) y=128;
  else y = (y-y0)/4.4 + 128;
  Serial.write(x); //直接送出去
  Serial.write(y);

  if (x>900) tone(8, 784, 100);
  if (x<100) tone(8, 523, 100);
  if (y>900) tone(8, 659, 100);
  if (y<100) tone(8, 500, 100); // 亂寫數字
}