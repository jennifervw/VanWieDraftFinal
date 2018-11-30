Block myBlock; 
Text myText;
Timer myTimer;
Ball myBall;
Block[] blockList = new Block [1];
int x = 100;
int y = 100;
float updown;
float leftright;
int a;
int mode = 1;
boolean buttonClicked = true;

// create an array for holding blocks


void setup(){
  size(1200,800);
  background(0);
  for (int i = 0; i < blockList.length-1; i ++ ) {
    blockList[i].display();
  }
  myBlock = new Block(color(255), 10, 10, 10,10);
  myText = new Text(color(200,200,100), 10, 10);
  myTimer = new Timer(7000);
  myBall = new Ball(100,25, 25, 15);
  myTimer.start();
  updown=10;
  leftright=10;
  
  // populate the array of blocks
}

void draw(){
    if(mode == 1){
    background(0);
    // This is where all the title screen stuff happens
    if(buttonClicked){
      myText.display();
     if (myTimer.isFinished()) {
      mode = 2;
      myTimer.start();
  }
    // buttonClicked is not true
    else{
  }
    }
}
  // About page
    else if(mode == 2){
    background(102, 100, 151);
    textSize(100);
    text("press 3 to start", width/2, height/2); 
    fill(255);
    // This is where all the about page stuff like the
    // text or even an image of the creator
  }
    //for (int i=0; i!=5; ++i){
    //drawMaze((int) random(width,1000), (int) random(height,600));
    //}
     else if(mode == 3){
      background(0);
      myBlock.display();
      myBall.display();
      //if (myTimer.isFinished()) {
      //background(255);
      //myTimer.start();
      
      // do a for loop through your array of blocks
      // check for collision
      boolean collided = false;
      
      //for( go through array of blocks){
      //  if(block[i].collided(myBall.x, myBall.y, myBall.r){
      //    mode = 1;  
      //  }
      //}
      
      if( leftright > width ){
        mode = 4; 
        println("WE SHOULD BE IN MODE 4");
      }
      }
      else if(mode == 4){
       background(0);
      }
  }
//}

void keyPressed(){
  if(key == '1'){
    mode = 1;  
  }
  else if(key == '2'){
    mode = 2;
  }
  else if(key == '3'){
    mode = 3;
  }
  else if(key == '4'){
    mode = 4;
}
}

void ball(){
      if( leftright > width ){
        mode = 4; 
        println("WE SHOULD BE IN MODE 4");
      }
}