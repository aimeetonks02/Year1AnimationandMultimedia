//This scene shows a 6-frame animation that scrolls and loops across the screen
int bgoffset = 0;
int frameoffset = 1750;
int index = 0;

void sceneOne(PImage bg, PImage mfg, PImage[] Frames) {  
  //This aligns the background piece to the canvas and lines it up one after another to create a scrolling image
  image(bg, -bgoffset, 0);                 
  image(bg, bg.width-bgoffset, 0);
  image(mfg, 0, 0);
  //This cycles through the frames whilst scrolling them across the screen
  image(Frames[index], -frameoffset, 0);                 
  image(Frames[index], 1750-frameoffset, 0);
  index = (index + 1) % 6; 
  //The different offsets mean that the ske scrolls to the left whilst the people and robot scroll to the right
  bgoffset = (bgoffset + 3) % bg.width;
  frameoffset = (frameoffset - 14) % 1750;
}
