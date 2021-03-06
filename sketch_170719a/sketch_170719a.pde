int value = 0;
int start = millis();

//varForText
int textX = 0;
int text2X = -180;
int text3X = -390;
int text4X = -600;

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
int roadPaintY = 628;

void setup() {
  size(400, 400);
}

void draw() {
    //scenery
    noStroke();
    background(195, 236, 250);
    
    //sun
    fill(255, 204, 0);
    ellipse(217, sunY, 70, 70);
    
    if (mountainRightY > 70) {
    sunY --;
    }
    
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
    
    if (mountainRightY > 70) {
    leftY --;
    rightY --;
    }

    //mountains
      fill(22, 79, 13);
      triangle(mountainLeftX2, 407, mountainLeftX1, 412, 113, mountainLeftY);
      triangle(mountainRightX1, 400, mountainRightX2, 400, 288, mountainRightY);
      
    if (mountainRightY > 70) {

      //mountainLeftMove

      mountainLeftY --;
      mountainLeftX1 ++;
      mountainLeftX2 --;
      
      //mountainRightMove
      mountainRightY --;
      mountainRightX1 --;
      mountainRightX2 ++;
   }
    
    
    //road
    fill(87, 81, 81);
    rect(0, roadMainY, 413, 71);
    fill(235, 225, 117);
    rect(200, roadPaintY, 72, 12);
    rect(311, roadPaintY, 72, 12);
    rect(89, roadPaintY, 72, 12);
    rect(-21, roadPaintY, 72, 12);
    
    if (mountainRightY > 70) {
    roadMainY --;
    roadPaintY --;
    }
    
    if (mountainRightY == 70) {
        fill(255, 255, 255);
        textSize(20);
        text("2017 Leadership in Tech", 80, 240); 
    }
    
       if (millis() - start >= 10000) {
          background(195, 236, 250);
          
          //sun
          fill(255, 204, 0);
          ellipse(217, sunY, 70, 70);
          
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
          
          //mountains
          fill(22, 79, 13);
          triangle(mountainLeftX2, 407, mountainLeftX1, 412, 113, mountainLeftY);
          triangle(mountainRightX1, 400, mountainRightX2, 400, 288, mountainRightY);
          
          //road
          fill(87, 81, 81);
          rect(0, roadMainY, 413, 71);
          fill(235, 225, 117);
          rect(200, roadPaintY, 72, 12);
          rect(311, roadPaintY, 72, 12);
          rect(89, roadPaintY, 72, 12);
          rect(-21, roadPaintY, 72, 12);
          
          if (millis() - start >= 11000) {
            fill(255, 255, 220);
            text("PERSEVERANCE", textX, 240);
            text("TEAMWORK", text2X, 240);
            text("UNDERSTANDING", text3X, 240);
            text("COMMUNICATION", text4X, 240);
            textX ++;
            text2X ++;
            text3X ++;
            text4X ++;
          }
   }
   }
  

