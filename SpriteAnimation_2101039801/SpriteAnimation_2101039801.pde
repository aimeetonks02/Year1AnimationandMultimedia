/*Computer Animation and Multimedia Assessment 2: Sprite Animation
 Student ID: 2101039801
 This animation shows a man walking through a street; the man is a 14-pose sprite animation and the street is a 3-piece scrolling background.
 */
import processing.sound.*;
SoundFile bgSound;

String[] credits;
PImage[] Frames = new PImage[14];
PImage walk, bg, mg, fg;

void setup() {
  bgSound = new SoundFile(this, "GravelSound.mp3");
  if (frameCount<250) {
    bgSound.play();
  } else {
    bgSound.stop();
  }
  size(1000, 1000);
  frameRate(12);
  credits = loadStrings("credits.txt");
  for (int n = 0; n < 14; n++) {
    Frames[n] = loadImage("walk_"+(n+1)+".PNG");
  }
  bg = loadImage("background.PNG");
  mg = loadImage("middleground.PNG");
  fg = loadImage("foreground.PNG");
}

void draw() {
  if (frameCount<250) {
    sceneOne(bg, mg, fg);
  } else {
    sceneTwo(frameCount-250);
  }
  if (frameCount>=250){
    bgSound.stop();
  }
}
