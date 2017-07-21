int value = 0;

//varForSun
int sunY = 367;

//varForClouds
int x = 10;
int leftX = 83;
int rightX = 304;
int leftY = 356;
int rightY = 291;

//varForMountains
int sPos = 84;
int mountainLeftY = 277;
int mountainLeftX1 = 223;
int mountainLeftX2 = 31;
int mountainRightY = 327;
int mountainRightX1 = 217;
int mountainRightX2 = 381;

//varForRoad
int roadMainY = 600; 
int roadPaintY = 634;

void setup() {
  size(400, 400);
}

void keyPressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}

void draw() {
    if (value == 255) {
    //scenery
    noStroke();
    background(195, 236, 250);
    
    //sun
    fill(255, 204, 0);
    ellipse(217, sunY, 70, 70);
    
    sunY --;
    
    // clouds 
    fill(255, 255, 255);
    // left cloud
    ellipse(leftX, leftY, 126, 97);
    ellipse(leftX+62, leftY, 70, 60);
    ellipse(leftX-62, leftY, 70, 60);
    // right cloud
    ellipse(rightX, rightY, 126, 97);
    ellipse(rightX+62, rightY, 70, 60);
    ellipse(rightX-62, rightY, 70, 60);
    
    leftY --;
    rightY --;

    //mountains
    fill(22, 79, 13);
    //mountainLeftMove
    triangle(mountainLeftX2, 407, mountainLeftX1, 412, 113, mountainLeftY);
    //mountainRightMove
    triangle(mountainRightX1, 400, mountainRightX2, 400, 288, mountainRightY);
    mountainLeftY --;
    mountainLeftX1 ++;
    mountainLeftX2 --;
    
    mountainRightY --;
    mountainRightX1 --;
    mountainRightX2 ++;
    
    //road
    fill(87, 81, 81);
    rect(0, roadMainY, 413, 71);
    fill(235, 225, 117);
    rect(200, roadPaintY, 72, 12);
    rect(311, roadPaintY, 72, 12);
    rect(89, roadPaintY, 72, 12);
    rect(-21, roadPaintY, 72, 12);
    
    roadMainY --;
    roadPaintY --;
    
    if (mountainRightY == 70) {
        fill(255, 255, 255);
        textSize(20);
        text("2017 Leadership in Tech", 100, 240);
        noLoop();    
    }
    
} else {
  background(195, 236, 350);
  fill(0, 0, 0);
  textSize(20);
  text("Click on the box, then press any key to start", 2.5, 200);
}

}

    


    


    

    
