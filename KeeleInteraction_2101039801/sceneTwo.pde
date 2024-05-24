//This is the final credits scene
void sceneTwo(int fCount) {
  //The frame rate is increased so that the credits roll smootherS
  frameRate(30);
  //This makes sure the text is centred and writes each line from the text file onto the screen
  textAlign(CENTER, CENTER);
  //This makes the text a deep purple
  fill(101, 69, 143);
  textSize(36);
  //This makes the background a muted blue
  background(175, 222, 227);
  for (int n=0; n<credits.length; n++) {
    text(credits[n], width/2, n*50 + height - fCount+50);
  }
}
