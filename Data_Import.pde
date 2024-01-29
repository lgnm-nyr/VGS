//import data
Table data;
//images for All and other buttons
PImage photo;
PImage photo1;
//ArrayList to store all data
ArrayList<Vg> games = new ArrayList<Vg>();
void data() {
  //data loaded into table
  data = loadTable("VideoGameSales.csv", "header");
  //photos loaded and resized
  photo = loadImage("World img.jpg");
  photo.resize(26,26);
  photo1 = loadImage("Other Flag.jpg");
  photo1.resize(39,26);
  //running in the data into the ArrayList
  for (TableRow row : data.rows()) {
    int r = row.getInt("Rank");
    String n = row.getString("Name");
    String p = row.getString("Platform");
    int y = row.getInt("Year");
    String g = row.getString("Genre");
    String pub = row.getString("Publisher");
    float na = row.getFloat("NA_Sales");
    float e = row.getFloat("EU_Sales");
    float j = row.getFloat("JP_Sales");
    float o = row.getFloat("Other_Sales");
    float gs = row.getFloat("Global_Sales");
    games.add(new Vg(r, 1, 1, 1, 1, n, p, y, g, pub, na, e, j, o, gs));
  }
}

//sorting data for each region and giving a rank where needed (only global rank exists in the csv file, regional ranks needed adding)
void organise_sales() {
  for (int j =0; j<40; j++) {
    for (int i =(games.size()-1); i>0; i--) {
      if (games.get(i).gls < games.get(i-1).gls) {
        Vg temp = games.get(i-1);
        games.remove(i-1);
        games.add(temp);
      }
    }
  }
}

void organise_salesna() {
  for (int j = 0; j<40; j++) {
    for (int i=(games.size() -1); i>0; i--) {
      if (games.get(i).nas < games.get(i-1).nas) {
        Vg temp = games.get(i-1);
        games.remove(i-1);
        games.add(temp);
      }
      games.get(i).nrank = 40-i;
    }
  }
  games.get(0).nrank = 40;
}

void organise_saleseu() {
  for (int j = 0; j<40; j++) {
    for (int i=(games.size()-1); i>0; i--) {
      if (games.get(i).eus < games.get(i-1).eus) {
        Vg temp = games.get(i-1);
        games.remove(i-1);
        games.add(temp);
      }
      games.get(i).erank = 40-i;
    }
  }
  games.get(0).erank = 40;
}

void organise_salesjp() {
  for (int j = 0; j<40; j++) {
    for (int i =(games.size()-1); i>0; i--) {
      if (games.get(i).jps < games.get(i-1).jps) {
        Vg temp = games.get(i-1);
        games.remove(i-1);
        games.add(temp);
      }
      games.get(i).jrank = 40-i;
    }
  }
  games.get(0).jrank = 40;
}

void organise_saleso() {
  for (int j = 0; j<40; j++) {
    for (int i = (games.size()-1); i>0; i--) {
      if (games.get(i).os < games.get(i-1).os) {
        Vg temp = games.get(i-1);
        games.remove(i-1);
        games.add(temp);
      }
      games.get(i).orank = 40-i;
    }
  }
  games.get(0).orank = 40;
}
