int[]ti;
int y = 0;

void setup() {
  initboard(10, 3);
  isAMine(2);
  //getMines(7);
}

void initboard(int nbr_lignes, int nbrmines) {

  ti = new int [nbr_lignes];

  while ( y<nbrmines) {

    int pos_mine = int(random(nbr_lignes));

    if (ti[pos_mine]!=99) {
      ti[pos_mine]=99;
      y++;
    }
  }
  println(ti);
}



boolean isAMine ( int nbr_lignes ) {
  int pos_mine = int(nbr_lignes);
  if (ti[pos_mine]==99) {
    println("Mine");
    return true;
  } else {
    println("Clear");
    return false;
  }// Truove les mines
}



//void getMines (int nbr_lignes) {
//  boolean pos_mine = (int(nbr_lignes)!=-1 && int(nbr_lignes)!=10);
//  //boolean minegauche = pos_mine > 0 &&
//  //boolean minedroite = pos_mine = 

//  if ( ti[pos_mine+1]==99 && ti[pos_mine-1]==99 ) {
//    println("Il y a deux mines à proximité");
    
//  }
//  if ( ti[pos_mine+1]==99||ti[pos_mine-1]!=99 ) {
//    println("Il y a une mine à approximité");
    
//  } else {
//    println("clear");
    
//  }
//  //if ( ti[pos_mine+1]==99 || ti[pos_mine-1] == 99) {
//  //  println("Il y a une mine à proximité");
//  //  return true;
//  //} else {
//  //  println("position clear");
//  //  return false;
//}
