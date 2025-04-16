void setup () {
  int result = calcul(57);
  println(result);
}

int calcul (int x) {
  int i = 0;
  int s = 0;
  while ( i < x ) {
    i=i+1;
    s = s + i;
  }
  return s ;
}
