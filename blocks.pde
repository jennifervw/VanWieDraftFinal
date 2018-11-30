class Block{
  color c;
  float x;
  float y;
  //float lastx_pos;
  //float x_pos;
  
  Block(color tempC, float tempX, float tempY, float tempLastX_pos, float X_pos){
    c =  color (255);
    x = width/2;
    y = height/2;
    //x_pos = lastx_pos + random(100,600);
  }
 
 void display(){
  fill(200,100,255);
  ellipse(leftright, updown, 25, 25);
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
  pushMatrix();
   fill(255);
   rect(x, y, 30, 500);
   rect(x-40, y-400, 30, 200);
   rect(x+190, y+60, 30, 90);
   rect(x-200, y, 30, 100);
   rect(x-100, y-50, 30, 100);
   rect(x-150, y-300, 30, 200);
   rect(x-300, y-50, 30, 300);
   popMatrix();
 }
}

    