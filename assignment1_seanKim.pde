import processing.sound.*;

SoundFile laughing;

int rad = 60;        // Width of the shape
float xpos, ypos;    // Starting position of shape    
int counter = 1000;
float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape

PImage img;


int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom

String[] quotes = { "Hopefully not soon", "idk you tell me", "huh what's that", "I don\'t believe in global warming", "someone else will deal with it" };

import gifAnimation.*;

Gif myAnimation;

void setup() 
{
  size(900, 900);
  noStroke();
  frameRate(15);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
  myAnimation = new Gif(this, "giphy-3.gif");
  myAnimation.play();
  
  laughing = new SoundFile(this, "cheer.mp3");
  
  
  background(0);
}

void draw() 
{
  counter--;
  if(counter >= 0) {
    if(counter <= 900) {
      textSize(35);
      textAlign(CENTER);
      text("why isn't anyone worried about the countdown?", 900/2, 800);
    }
    if(counter <= 500){
     laughing.play(); 
    }
    image(myAnimation, 0, 0);
    fill(255,255,255);
    textSize(50);
    textAlign(CENTER);
    text("When will the world end?", 900/2, 900/2);
    fill(255,255,255);
    textSize(32);
    textAlign(CENTER);
    text(counter, 850/2, 850/2);
    
    
    fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text(quotes[(int) random(0, quotes.length)], random(100, 700), random(100,700));
    
      fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text(quotes[(int) random(0, quotes.length)], random(100, 700), random(100,700));
    
      fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text(quotes[(int) random(0, quotes.length)], random(100, 700), random(100,700));
    
      fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text(quotes[(int) random(0, quotes.length)], random(100, 700), random(100,700));
    
      fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text(quotes[(int) random(0, quotes.length)], random(100, 700), random(100,700));
    
      fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text(quotes[(int) random(0, quotes.length)], random(100, 700), random(100,700));
    
      fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text(quotes[(int) random(0, quotes.length)], random(100, 700), random(100,700));
  
    // Update the position of the shape
    xpos = xpos + ( xspeed * xdirection );
    ypos = ypos + ( yspeed * ydirection );
    
    // Test to see if the shape exceeds the boundaries of the screen
    // If it does, reverse its direction by multiplying by -1
    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1;
    }
    if (ypos > height-rad || ypos < rad) {
      ydirection *= -1;
    }
 
    // Draw the shape
    fill(255,0,0);
    textSize(32);
    text(counter, xpos, ypos);
  }else{
    background(0); 
    textSize(50);
    textAlign(CENTER);
    text("I guess it's too late?", 900/2, 900/2);
  }
}


void mouseReleased() {  
 background(0);  
}
