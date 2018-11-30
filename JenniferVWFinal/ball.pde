class Ball{
  color c;
  float x;
  float y;
  float r;
  //float lastx_pos;
  //float x_pos;
  
  Ball(color tempC, float tempX, float tempY, float tempR){
    c =  color (255);
    x = 10;
    y = 10;
    r = 15;
    //x_pos = lastx_pos + random(100,600);
  }
 
 void display(){
  fill(200,100,255);
  ellipse(leftright, updown, r*2, r*2);
  if(keyPressed==true){
    if(key=='a'){
      leftright=leftright-5;
    }
    if(key=='d'){
      leftright=leftright+5;
    }
    if(key=='w'){
      updown=updown-5;
    }
    if(key=='s'){
      updown=updown+5;
    }
    }
  }
 }