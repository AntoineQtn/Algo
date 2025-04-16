int position=0;
boolean [] board ={false, false, true, false, true, false, false, false};
void setup() {
  while (position < board.length-1) {
    go();
  }
  println(" Toto est arrivée à la fin sans se mouiller!");
}
boolean walk() {
  position=position+1;
  println("Toto marche à la position"+position);
  return false;
}
boolean Jump() {
  position=position+2;
  println(" Toto saute à la position" + position);
  return true;
}
boolean isNearwater() {
  return board[ position+1]&& board[position+3];
}
void go() {
  if (isNearwater()==true ) {
    Jump();
  } else {
    walk();
  }
}
