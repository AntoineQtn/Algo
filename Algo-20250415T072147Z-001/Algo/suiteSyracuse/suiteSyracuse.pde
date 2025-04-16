void setup () {
  suitedeSyracuse(15);
}


void suitedeSyracuse (int x) {
  println(x);
  while ( x != 1 ) {
    if ( x%2 == 0 ) {
      x=x/2;
    } else {
      x=x*3+1;
    }
    println(x);
  }
}
