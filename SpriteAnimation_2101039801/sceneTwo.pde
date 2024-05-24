//This is a credits scene
void sceneTwo(int fCount) {
  frameRate(30);
  //This positions and writes each line from the text file onto the screen
  textAlign(CENTER, CENTER);
  fill(50, 255, 255);
  textSize(36);
  background(0);
  for (int n=0; n<credits.length; n++) {
    text(credits[n], width/2, n*50 + height - fCount+50);
  }
}
