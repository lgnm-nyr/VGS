//repeat
void screen_nas() {
  sf = 11;
  bw = 14;
  organise_salesna();
  reset();
  textbox();
  legend();
  for (int i=0; i<games.size(); i++) {
    if (i<6 || i>6 && i<14 || i>17 && i<20 || i>20 && i<23 || i>28 && i<33|| i == 16 || i == 34 || i ==36 || i>37) {
      fill(229, 20, 0);
    } else if (i==6) {
      fill(0, 255, 0);
    } else if (i==15 || i==17 || i==24 || i==26 || i==27) {
      fill(255, 128, 0);
    } else if (i==28) {
      fill(0, 30, 255);
    } else {
      fill(27, 161, 226);
    }
    rect(sw+20*i, hg-((games.get(games.size()-1-i).nas)*sf), bw, games.get(games.size()-1-i).nas*sf);
    if(mouseX >sw+20*i && mouseX <sw+bw+20*i && mouseY>hg-((games.get(games.size()-1-i).nas)*sf) && mouseY<hg){
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
