//creation of a legend to understand the visualisation
void legend(){
  text("Legend", (width+900)/2, height*3/4 +15);
  //creating of mini bars w/ labels
  for(int i =0;i<5;i++){
  stroke(255);
  line(915,height*3/4 + (33*(i+1)),915,height*3/4 +33*(i+1)+29);
  line(915,height*3/4 + 33*(i+1)+29, 932,height*3/4 + 33*(i+1)+29);
  noStroke();
  textAlign(LEFT);
  if(i ==0){
    fill(229, 20, 0);
    text("=Nintendo", 935, height*3/4 +55+i*33);
  } else if(i==1){
    fill(0,255,0);
    text("=Microsoft Game Studios",935,height*3/4+55+i*33);
  } else if(i==2){
    fill(255,128,0);
    text("=Take-Two Interactive",935,height*3/4+55+i*33);
  } else if(i==3){
    fill(27, 161, 226);
    text("=Activision",935,height*3/4+55+i*33);
  } else {
    fill(0, 30, 255);
    text("=Sony Computer Entertinment",935,height*3/4+55+i*33);
  }
  rect(920,height*3/4 + 33*(i+1)+4, 10,25);
    }
    textAlign(CENTER);
}

//code to assign a name to each bar
void names(){
  translate(67,605);
  rotate(-PI/2);
  for(int i=0;i<40;i++){
    fill(255);
    if(textWidth(games.get(39-i).name) > 200){
      textSize(9);
    } else if(textWidth(games.get(39-i).name) <100){
      textSize(12);
    }
    textAlign(LEFT);
    text(games.get(39-i).name,-textWidth(games.get(39-i).name),20*i);
    textAlign(CENTER);
  }
  rotate(PI/2);
  translate(-67,-605);
  textSize(12);
}
