//This scene shows a 14-frame walking sprite animation
int bgoffset = 0;
int mgoffset = 0;
int fgoffset = 0;
int index = 0;

void sceneOne(PImage bg, PImage mg, PImage fg) {  
  //This aligns the background pieces to the canvas and lines them up directly after each other to create a scrolling image
  image(bg, -bgoffset, 0);                 
  image(bg, bg.width-bgoffset, 0);
  image(mg, -mgoffset, 0);                 
  image(mg, mg.width-mgoffset, 0);
  image(fg, -fgoffset, 0);                 
  image(fg, fg.width-fgoffset, 0);
  image(Frames[index], 0, 0);      
  index = (index + 1) % 14; 
  bgoffset = (bgoffset + 3) % bg.width;
  mgoffset = (mgoffset + 7) % mg.width;
  fgoffset = (fgoffset + 12) % fg.width;
}
