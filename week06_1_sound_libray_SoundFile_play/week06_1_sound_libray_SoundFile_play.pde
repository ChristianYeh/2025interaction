//week06_1_sound_libray_SoundFile_play
//Sketch-Library-MangeLibraries,找sound安裝他
//File-Examples-Libraries核心函式庫-sound-soundfile-simpleplayback
import processing.sound.*;//使用聲音外掛模組
SoundFile sound;//宣告soundfile物件變數
void setup(){
  size(500,400);
  sound=new SoundFile(this,"music.mp3");
  sound.play();
}
void draw(){
  
}
