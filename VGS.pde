void setup() {
  //predetermined size of window
  size(1200, 800);
  textAlign(CENTER);
  //import data
  data();
  //running the data organisation in each category so that way the "rank" for each region can be displayed immediately when code is run
  organise_salesna();
  organise_saleseu();
  organise_salesjp();
  organise_saleso();
  organise_sales();
}

void draw() {
  //buttons to work from start of code being run.
  button();
  //toggles different sales screens
  for (int i =0; i<5; i++) {
    if (button[0] == 1) {
      screen_gls();
      comparison();
      button();
      fill(255, 255, 0);
      ellipse(72, sy-10, 5, 5);
      names();
    } else if (button[1] == 1) {
      screen_nas();
      comparison();
      button();
      fill(255, 255, 0);
      ellipse(124, sy-10, 5, 5);
      names();
    } else if (button[2] == 1) {
      screen_eus();
      comparison();
      button();
      fill(255, 255, 0);
      ellipse(176, sy-10, 5, 5);
      names();
    } else if (button[3] == 1) {
      screen_jps();
      comparison();
      button();
      fill(255, 255, 0);
      ellipse(228, sy-10, 5, 5);
      names();
    } else if (button[4] == 1) {
      screen_os();
      comparison();
      button();
      fill(255, 255, 0);
      ellipse(280, sy-10, 5, 5);
      names();
    }
  }
}

//mouseClicked functionality for all the buttons being used
void mouseClicked() {
  //region buttons
  for (int i=0; i<5; i++) {
    if (mouseX > (sx*(i+1))-1 && mouseX < (sx*(i+1))+w+1 && mouseY > sy-1 && mouseY < sy+h+1) {
      button[i]=1;
      for (int k =0; k<40; k++) {
        button1[k]=0;
      }
      for (int j=0; j<5; j++) {
        if (i !=j) {
          button[j]=0;
        }
      }
    }
  }
  //bar data buttons for each region
  if (button[0]==1) {
    for (int j =0; j<40; j++) {
      if (mouseX >sw+20*j && mouseX <sw+20*j+bw && mouseY>hg-((games.get(39-j).gls)*(sf)) && mouseY<hg) {
        button1[j]=1;
        for (int i=0; i<40; i++) {
          if (i != j) {
            button1[i]=0;
          }
        }
      }
    }
  }
  if (button[1]==1) {
    for (int j =0; j<40; j++) {
      if (mouseX >sw+20*j && mouseX <sw+20*j+bw && mouseY>hg-((games.get(39-j).nas)*sf) && mouseY<hg) {
        button1[j]=1;
        for (int i=0; i<40; i++) {
          if (i != j) {
            button1[i]=0;
          }
        }
      }
    }
  }
  if (button[2]==1) {
    for (int j =0; j<40; j++) {
      if (mouseX >sw+20*j && mouseX <sw+20*j+bw && mouseY>hg-((games.get(39-j).eus)*sf) && mouseY<hg) {
        button1[j]=1;
        for (int i=0; i<40; i++) {
          if (i != j) {
            button1[i]=0;
          }
        }
      }
    }
  }
  if (button[3]==1) {
    for (int j =0; j<40; j++) {
      if (mouseX >sw+20*j && mouseX <sw+20*j+bw && mouseY>hg-((games.get(39-j).jps)*sf) && mouseY<hg) {
        button1[j]=1;
        for (int i=0; i<40; i++) {
          if (i != j) {
            button1[i]=0;
          }
        }
      }
    }
  }
  if (button[4]==1) {
    for (int j =0; j<40; j++) {
      if (mouseX >sw+20*j && mouseX <sw+20*j+bw && mouseY>hg-((games.get(39-j).os)*sf) && mouseY<hg) {
        button1[j]=1;
        for (int i=0; i<40; i++) {
          if (i != j) {
            button1[i]=0;
          }
        }
      }
    }
  }
  //clear button mechanism
  if (mouseX< 1088 && mouseX>1012 && mouseY<height*3/4 -7 && mouseY> height*3/4 -33) {
    for (int i = 0; i<40; i++) {
      button1[i]=0;
    }
  }
}
