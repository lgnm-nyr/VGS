//code for the textbox without data being shown
void textbox(){
  int s = 910;
  int s2 = 1085;
  fill(255);
  text("Hover Over A Bar To See All Stats!",(width+xt)/2,15);
  text("Click To Save Them for Comparison!",((width+xt)/2)+4,(height*3/8)+15);
  text("All Game Sales are in Millions!",(width+xt)/2,height*3/8 -15);
  textAlign(LEFT);
  text("Name: ", s, 45);
  text("Genre: ",s,75);
  text("Year: ",1030,75);
  text("Platform: ",1100,75);
  text("Publisher: ",s,105);
  text("Global Sales: ", s, 135);
  text("Global Rank: ",s2, 135);
  text("NA Sales: ",s,165);
  text("NA Rank: ",s2,165);
  text("EU Sales: ",s,195);
  text("EU Rank: ",s2,195);
  text("JP Sales: ",s,225);
  text("JP Rank: ",s2,225);
  text("Other Sales: ",s,255);
  text("Other Rank: ",s2,255);
  text("Name: ", s, 345);
  text("Genre: ",s,375);
  text("Year: ",1030,375);
  text("Publisher: ",s,405);
  text("Platform: ",1100,375);
  text("Global Sales: ", s, 435);
  text("Global Rank: ",s2, 435);
  text("NA Sales: ",s,465);
  text("NA Rank: ",s2,465);
  text("EU Sales: ",s,495);
  text("EU Rank: ",s2,495);
  text("JP Sales: ",s,525);
  text("JP Rank: ",s2,525);
  text("Other Sales: ",s,555);
  text("Other Rank: ",s2,555);
  textAlign(CENTER);
}

//general reset page to redraw the visualisation for each different button
//height of graph
int hg = 600;
//starting width of graph
int wg = 50;
//starting x of textbox/legend
int xt = 900;
void reset(){
  background(80);
  stroke(255);
  line(wg, 100, wg, hg);
  line(wg, hg, wg+800, hg);
  line(xt, 0, xt, height);
  line(xt,height*3/8,width,height*3/8);
  line(xt,height*3/4,width,height*3/4);
  noStroke();
}

//code that links to button mechanism to show data when a bar is clicked
void comparison(){
  for (int j=0; j<40; j++) {
      if (button1[j]==1) {
        textAlign(LEFT);
        fill(255,0,255);
        if(textWidth(games.get(39-j).name) >200){
        textSize(10);
        text(games.get(39-j).name,950,345);
      } else {
        textSize(12);
        text(games.get(39-j).name,950,345);
      }
        textSize(12);
        text(games.get(39-j).genre, 950, 375);
        text(games.get(39-j).year, 1060, 375);
        text(games.get(39-j).platform, 1155, 375);
        text(games.get(39-j).publisher, 970, 405);
        text(games.get(39-j).gls, 980, 435);
        text(games.get(39-j).rank, 1160, 435);
        text(games.get(39-j).nas, 965, 465);
        text(games.get(39-j).nrank, 1140, 465);
        text(games.get(39-j).eus, 965, 495);
        text(games.get(39-j).erank, 1140, 495);
        text(games.get(39-j).jps, 965, 525);
        text(games.get(39-j).jrank, 1140, 525);
        text(games.get(39-j).os, 975, 555);
        text(games.get(39-j).orank, 1155, 555);
        textAlign(CENTER);
      }
    }
}
