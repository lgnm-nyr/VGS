//scaling factor for each bar
float sf;
//bar width
int bw = 14;
//starting x for the bars
int sw = wg+5;
//screen shown for all sales
void screen_gls() {
  sf = 5.5;
// organise data for this screen
  organise_sales();
// standard layout setup
  reset();
  textbox();
  legend();
  //colour system for each bar, for some reason if(games.get(39-i).publisher = "Insert publisher name here"); didnt want to work in whatever way i tried it :/
  for (int i=0; i<games.size(); i++) {
    if (i<15 || i>17 && i<23 || i>24 && i<28 || i == 30 || i == 32 || i==39) {
      fill(229, 20, 0);
    } else if (i==15) {
      fill(0, 255, 0);
    } else if (i==16 || i==17 || i==23 || i==24 || i==38) {
      fill(255, 128, 0);
    } else if (i==28) {
      fill(0,30, 255);
    } else {
      fill(27, 161, 226);
    }
    //bars being drawn
    rect(sw+20*i, hg-((games.get(39-i).gls)*sf), bw, games.get(39-i).gls*sf);
    //data being shown in textbox when mouse hovers over each bar
    if(mouseX >sw+20*i && mouseX <sw+bw+20*i && mouseY>hg-((games.get(39-i).gls)*sf) && mouseY<hg){
      textAlign(LEFT);
      if(textWidth(games.get(39-i).name) >200){
        textSize(10);
        text(games.get(39-i).name,950,45);
      } else {
        textSize(12);
        text(games.get(39-i).name,950,45);
      }
      textSize(12);
      text(games.get(39-i).genre,950,75);
      text(games.get(39-i).year,1060,75);
      text(games.get(39-i).platform,1155,75);
      text(games.get(39-i).publisher,970,105);
      text(games.get(39-i).gls,980,135);
      text(games.get(39-i).rank,1160,135);
      text(games.get(39-i).nas,965,165);
      text(games.get(39-i).nrank,1140,165);
      text(games.get(39-i).eus,965,195);
      text(games.get(39-i).erank,1140,195);
      text(games.get(39-i).jps,965,225);
      text(games.get(39-i).jrank,1140,225);
      text(games.get(39-i).os,975,255);
      text(games.get(39-i).orank,1155,255);
      textAlign(CENTER);
    }
  }
}
