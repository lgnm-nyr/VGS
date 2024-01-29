//array to set up different sales screens
int [] button = {1, 0, 0, 0, 0};
//array to set up clicks on each individual bar
int [] button1 = new int[40];

//Drawing buttons for regions
//starting x
int sx=52;
//starting y
int sy=40;
//width of button
int w=39;
//height of button
int h=26;

void button() {
  for (int i = 0; i<5; i++) {
    //indicators for which region's data is being viewed
    fill(128,128,128);
    ellipse((sx+w/2)+sx*i, sy-10,5,5);
    //each  button design + text
    if (i==0) {
      fill(255);
      rect(sx*(i+1), sy, w, h);
      image(photo,(sx*(i+1))+7,sy);
      fill(255);
      text("All", (sx*(i+1))+(w/2), sy+h+15);
      fill(255,0);
    } else if (i==1) {  
      for (int j=0; j<13; j++) {
        if (j%2 == 0) {
          fill(255, 0, 0);
        } else {
          fill(255);
        }
        rect(sx*(i+1), sy+(j*(h/13)), w, h/13);
      }
      fill(0, 0, 255);
      rect((sx*(i+1)), sy, w/3, h/2);
      fill(255);
      text("NA", (sx*(1+1))+(w/2), sy+h+15);
      fill(255, 0);
    } else if (i==2) {
      fill(0, 0, 255);
      rect(sx*(i+1), sy, w, h);
      stroke(255,255,0);
      noFill();
      ellipse(176,53,12,12);
      fill(255);
      text("EU", (sx*(i+1))+(w/2), sy+(h+15));
      fill(255,0);
      noStroke();
    } else if (i==3) {
      fill(255);
      rect(sx*(i+1), sy, w, h);
      fill(255, 0, 0);
      ellipse((sx*(i+1))+(w/2), sy+(h/2), 10, 10);
      fill(255);
      text("JP", (sx*(i+1))+(w/2), sy+(h+15));
      fill(255, 0);
    } else {
      image(photo1,sx*(i+1), sy);
      fill(255);
      text("Other", (sx*(i+1))+(w/2), sy+(h+15));
      fill(255,0);
    }
    rect(sx*(i+1), sy, w, h);
    fill(255);
    text("SALES BY REGION", 100, 20);
  }
  rectMode(CENTER);
  rect((900+width)/2,height*3/4 -20,75,25);
  rectMode(CORNER);
  fill(255,0,255);
  text("CLEAR",(900+width)/2,height*3/4 -15);
}
