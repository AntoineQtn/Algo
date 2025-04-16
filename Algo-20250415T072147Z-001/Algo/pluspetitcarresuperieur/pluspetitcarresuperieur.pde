void setup () {
  pluspetitcarresuperieur (30);
  pluspetitcarresuperieur (63);
}
void pluspetitcarresuperieur ( int n) {
  int i=1;
  while (i*i<n) {
    i++;
  }
  println(n, i*i);
}
