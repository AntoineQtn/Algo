int[]tabl;
int x = 0;

void setup() {
  initboard(10, 3);
  isAMine(6);
  getMines(7);
  affichage ();
}

void initboard(int pos, int mine) {

  tabl = new int [pos];

  while ( x<mine) {

    int pos_mine = int(random(pos));

    if (tabl[pos_mine]!=99) {
      tabl[pos_mine]=99;
      x++;
    }
  }
  println(tabl);
}



boolean isAMine ( int pos ) {
  int pos_mine = int(pos);
  if (tabl[pos_mine]==99) {
    println("Mine");
    return true;
  } else {
    println("Clear");
    return false;
  }
}

int getMines(int pos) {
  boolean leftMine = (pos > 0 && tabl[pos-1] ==99);
  boolean rightMine = (pos < tabl.length-1 && tabl[pos+1]==99);
  if (leftMine && rightMine) {
    return 2;
  } else if (leftMine || rightMine) {
    return 1;
  } else {
    return 0;
  }
}

void affichage () {
  for ( x=0; x<tabl.length; x++) {
    if (tabl[x]==99) {
      println("X");
    } else {
      println(getMines(x));
    }
  }
}
