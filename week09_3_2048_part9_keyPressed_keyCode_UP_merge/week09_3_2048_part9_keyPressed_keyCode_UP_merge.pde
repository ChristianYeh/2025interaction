//week09_3_2048_part9_keyPressed_keyCode_UP_merge
//先不要接week09_2
//修改自part_5
//案方向鍵，板子往那個方向走
color [] c={#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63};
color [] c2={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};
int [] N={0,2,4,8,16,32};//對應的數字
int [][] B={{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};//板子
void keyPressed(){
  if(keyCode==RIGHT){
    for(int i=0;i<4;i++){
      int now = 3;
      for(int j=3;j>=0;j--){
        if(B[i][j]>0){
          B[i][now]=B[i][j];
          while(now<3 && B[i][now+1]==B[i][now]){
            B[i][now+1]++;
            now++;
          }
          now--;
        }
      }
      for(int j=now;j>=0;j--){
         B[i][j]=0;
      }
    }
  }else if(keyCode==LEFT){
      for(int i=0;i<4;i++){
      int now = 0;
      for(int j=0;j<4;j++){
          if(B[i][j]>0){
          B[i][now]=B[i][j];
          while(now>0 && B[i][now-1]==B[i][now]){
            B[i][now-1]++;
            now--;
          }
          now++;
        }
      }
      for(int j=now;j<4;j++){
         B[i][j]=0;
      }
    }
  }else if(keyCode==UP){
     for(int j=0;j<4;j++){
       int now = 0;
       for(int i=0;i<4;i++){
         if(B[i][j]>0){
           B[now][j]=B[i][j];
         while(now>0 && B[now-1][j]==B[now][j]){
           B[now-1][j]++;
           now--;
         }
         now++;
       }
     }
     for(int i=now;i<4;i++){
       B[i][j]=0;
     }
     }
  }else if(keyCode==DOWN){
     for(int j=0;j<4;j++){
       int now = 3;
       for(int i=3;i>=0;i--){
         if(B[i][j]>0){
           B[now][j]=B[i][j];
         while(now<3 && B[now+1][j]==B[now][j]){
           B[now+1][j]++;
           now++;
         }
         now--;
         }
       }
     for(int i=now;i>=0;i--){
       B[i][j]=0;
     }
    }
  }  
  genTwo();
}
void genTwo(){
  int zero=0;
  for(int i=0;i<4;i++){
     for(int j=0;j<4;j++){
       if(B[i][j]==0) zero++;//找到0板子
     }
  }
  int ans=int(random(zero));
  for(int i=0;i<4;i++){
     for(int j=0;j<4;j++){
       if(B[i][j]==0){
         if(ans==0){
           B[i][j]=1;
           return;
         }else ans--;
      }
    }
 }
}
void setup(){
  size(410,410);//讓邊線漂亮一點
}
void draw(){
  background(188,174,162);
  for(int i=0;i<4;i++){//左手i
    for(int j=0;j<4;j++){//右手j
      int id = B[i][j];//對應的代碼
      fill(c[id]);//fill(206,194,185);
      noStroke();//不要黑框線
      rect(j*100+10,i*100+10,90,90,5);//弧角5
      fill(c2[id]);
      textAlign(CENTER,CENTER);
      textSize(60);
      text(N[id],j*100+55,i*100+55);
    }
  }
}
