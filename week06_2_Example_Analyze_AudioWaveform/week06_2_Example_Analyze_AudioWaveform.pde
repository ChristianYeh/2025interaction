//week06_2_Example_Analyze_AudioWaveform
import processing.sound.*;

SoundFile sample;
Wavefrom waveform;


int samples=100;//依次讀入多少sample:100個sample

public void setup(){
  size(640,360);
  background(255);
  
  sample=new SoundFile(this,"beat.aiff");
  sample.loop();//循環播放
  
  waveform=new Waveform(this,samples);
  wavceform.input(sample);
}
public void draw(){
  background(0);
  stroke(255);
  strokeweight(2);
  noFill();
  
  waveform.analyze();
  
  beginShape();
  for(int i=0;i<samples;i++){
    vertex(
      map(i,0,samples,0,width),
      map(waveform.data[i],-1,1,0,height)
      );
  }
  endShape();
}
