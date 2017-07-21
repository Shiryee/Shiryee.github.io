//varForSun
var sunY = 367;

//varForClouds
var x = 10;
var leftX = 83;
var rightX = 304;
var leftY = 356;
var rightY = 291;

//varForMountains
var sPos = 84;
var mountainLeftY = 277;
var mountainLeftX1 = 223;
var mountainLeftX2 = 31;
var mountainRightY = 327;
var mountainRightX1 = 217;
var mountainRightX2 = 381;
var drawMountains = function() {
    fill(22, 79, 13);
    //mountainLeftMove
    triangle(mountainLeftX2, 407, mountainLeftX1, 412, 113, mountainLeftY);
    //mountainRightMove
    triangle(mountainRightX1, 400, mountainRightX2, 400, 288, mountainRightY);
};


//varForRoad
var roadMainY = 470;
var roadPaintY = 499;

draw = function() {
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
    drawMountains();
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

    roadMainY -= 0.44;
    roadPaintY -= 0.44;

    if (mountainRightY === 60) {
        fill(255, 255, 255);
        textSize(20);
        text("2017 Leadership in Tech", 100, 240);
        noLoop();
    }

};

    


    


    

    
