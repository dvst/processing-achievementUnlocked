// Declaring variable at the beginning, so it doest't get affected by the colorMode() function.
int whiteCollar;

void setup(){
  size(500,200);
  whiteCollar = color(255); // assign white color for the text at the end.
  background(0);
}

void draw(){
    
    // Gradient color in background.
    colorMode(RGB, 500);
    for (int i = 0; i < 500; i++) {
      for (int j = 0; j < 400; j++) {
        stroke(i, 0, 0);
        point(i, j);
      }
    }

    noStroke();

    // Rectangle with variable size (depends on canvas).
    fill(200);
    rectMode(CENTER);
    rect(width/2,height/2,width-200,height-100);
    
    // Rounded borders made by ellipse(), the fifth parameter of rect() function didn't work too well.
    ellipse(100,height/2,100,100); // left
    ellipse(width-100,height/2,100,100); // right

    // Black ellipse, to bring depth to the emblem.
    fill(0);
    ellipse(100,100,80,80);
    
    // Green segment of block of four.
    fill(70,255,70);
    arc(100,100,70,70,PI,PI+HALF_PI);

    // Rest of the segments, gray all of them.
    fill(200);
    arc(100,100,70,70,0,HALF_PI);
    arc(100,100,70,70,HALF_PI,PI);
    arc(100,100,70,70,PI+HALF_PI,TWO_PI);

    // ellipse to cut out the center and give appropriate shape.
    fill(0);
    ellipse(100,100,55,55);

    // Peer of Rectangles cross it in the middle to separate the ellipses one from the others.
    rect(100,100,7,70);
    rect(100,100,70,7);

    fill(whiteCollar);
    textSize(40);
    // text("🏆",88,115);
    text("T",88,115);
    
    textSize(26);
    text("Achievement unlocked",150,100);
    textSize(20);
    text("Draw with processing",150,120);
}