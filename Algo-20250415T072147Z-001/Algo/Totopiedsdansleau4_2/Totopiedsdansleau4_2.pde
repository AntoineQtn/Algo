
int position = 0;
//float mouvement = 0;
boolean[]board = { false, false, true, false, true, false, false };


void setup() {
  while (position < board.length-1) {
    go();
  }
  println("Toto est arrivé sans se mouiller!");
}

boolean walk () {
  //mouvement = mouvement + 1;
  position = position +1;
  println("Toto marche à la position "+position);
  return false;
  //println(position, "=>", mouvement );
}

boolean jump () {
  //mouvement = mouvement + 1;
  position = position +2;
  println("Toto saute à la position "+position);
  return true;
  //println(position, "=>", mouvement );
}

//void moyenne () {
//  float moyenne = position/mouvement;
//  println ( moyenne);
//}




boolean IsNearWater () {
  return board[position+1];
}

void go () {
  if (IsNearWater()==true) {
    jump();
  } else {
    walk();
  }
}
