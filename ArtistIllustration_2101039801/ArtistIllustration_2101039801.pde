/*Computer Animation and Multimedia Assessment 1: Artist or Artwork Inspired Animation
Student ID: 2101039801
This animation is inspired by the works of Piet Mondrian, in this animation you can
see several coloured sqares change through randomly assigned colours
*/
void setup(){
  size(500,500);
  //The framerate is low as to not strain people's eyes, when looking at the animation
  frameRate(3);
  background(255);
}

void draw(){
  fill(0,0,0);
  textSize(16);
  text("Inspired by Piet Mondrian", 0, 20);  
  strokeWeight(12);
  //The colours are chosen through three randomly generated numbers for the RGB levels
  color square1 = color(random(255),random(255),random(255));
  color square2 = color(random(255),random(255),random(255));
  color square3 = color(random(255),random(255),random(255));
  //This draws the single lines for the animation
  line(0, 160, 500, 160);
  line(260,0,260,500);
  line(260,360,500,360);
  line(75,160,75,500);
  line(75,260,160, 260);
  //This draws and fills the colour-changing squares with their assigned colours
  fill(square1);
  square(160,160,100);
  fill(square2);
  square(260,360,150);
  fill(square3);
  square(75,440,184);
}
