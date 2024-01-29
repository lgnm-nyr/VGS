//repeat
void screen_os() {
  sf = 45;
  bw = 14;
  organise_saleso();
  reset();
  textbox();
  legend();
  for (int i=0; i<games.size(); i++) {
    if (i==1 || i>2 && i<8 || i>9 && i<15 || i == 19 || i == 23 || i>26) {
      fill(229, 20, 0);
    } else if (i==16) {
      fill(0, 255, 0);
    } else if (i==0 || i==2 || i==15 || i==18 || i==21) {
      fill(255, 128, 0);
    } else if (i==24) {
      fill(0, 30, 255);
    } else {
      fill(27, 161, 226);
    }
    rect(sw+20*i, hg-((games.get(games.size()-1-i).os)*sf), bw, games.get(games.size()-1-i).os*sf);
    if(mouseX >sw+20*i && mouseX <sw+bw+20*i && mouseY>hg-((games.get(games.size()-1-i).os)*sf) && mouseY<hg){
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
