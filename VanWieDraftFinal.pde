Block myBlock; 
Text myText;
Timer myTimer;
int x = 100;
int y = 100;
float updown;
float leftright;
int a;
int mode = 1;
boolean buttonClicked = true;

void setup(){
  size(1200,800);
  background(0);
  myBlock = new Block(color(255), 10, 10, 10,10);
  myText = new Text(color(200,200,100), 10, 10);
  myTimer = new Timer(7000);
  myTimer.start();
  updown=10;
  leftright=10;
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
      //if (myTimer.isFinished()) {
      //background(255);
      //myTimer.start();
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
}