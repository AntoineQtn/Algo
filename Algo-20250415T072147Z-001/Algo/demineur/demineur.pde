int[]ti;
int x = 0;

void setup() {
  initboard(10, 3);
}

void initboard(int nbr_lignes, int nbrmines) {
  ti = new int [nbr_lignes];
  while ( x<nbrmines) {
    int pos_mine = int(random(nbr_lignes));

    if (ti[pos_mine]!=99) {
      ti[pos_mine]=99;
      x++;
    }
  }
  println(ti);
}
