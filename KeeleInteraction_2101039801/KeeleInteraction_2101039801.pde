/*Computer Animation and Multimedia Assessment 3: "Keele Interaction" Themed Sketch
 Student ID: 2101039801
 This animation shows a couple of people being shown around the SU Square by a robotic tour guide;
 the people and robot are a 6-pose sprite animation and the Square is composed of a static middle and foreground with a scrolling background.
 */
import processing.sound.*;
SoundFile bgSound;

String[] credits;
PImage[] Frames = new PImage[6];
PImage guide, bg, mfg;

void setup() {
  bgSound = new SoundFile(this, "chatter.mp3");
  if (frameCount<200) {
    bgSound.play();
  } else {
    bgSound.stop();
  }
  size(1000, 1000);
  frameRate(6);
  credits = loadStrings("credits.txt");
  for (int n = 0; n < 6; n++) {
    Frames[n] = loadImage("guide_"+(n+1)+".PNG");
  }
  bg = loadImage("sky.PNG");
  mfg = loadImage("SUsquare.PNG");
}

void draw() {
  if (frameCount<200) {
    sceneOne(bg, mfg, Frames);
  } else {
    sceneTwo(frameCount-200);
  }
  if (frameCount>=250) {
    bgSound.stop();
  }
}
