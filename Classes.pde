//Class created for sorting all the data
class Vg {
  int rank;
  //nrank -> orank created for sorting per region and data viewing
  int nrank;
  int erank;
  int jrank;
  int orank;
  String name;
  String platform;
  int year;
  String genre;
  String publisher;
  float nas;
  float eus;
  float jps;
  float os;
  float gls;
  Vg(int r, int nr, int er, int jr, int or, String n, String p, int y, String g, String pub, float na, float e, float j, float o, float gs) {
    rank = r;
    nrank = nr;
    erank = er;
    jrank = jr;
    orank = or;
    name = n;
    platform = p;
    year = y;
    genre =g;
    publisher = pub;
    nas = na;
    eus = e;
    jps = j;
    os = o;
    gls = gs;
  }
}
