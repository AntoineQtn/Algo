int [] plateau = new int [63];
int position = 0;
int positionjoueurbis;
void setup() {
  size(400, 400);
  jeu_de_loie (1);
}

void jeu_de_loie (int n) {
  while ( position < 63 ) {
    int dé1 = int(random(1, 7));
    int dé2 = int(random(1, 7));
    int déplacement = dé1 + dé2;
    int tour = 0;
    println("Dé : " + dé1 + ", Dé : " + dé2 + "\n Position précédente : " + position);

    position += déplacement;

    if ( position == 6 && tour ==0) {
      position = 12;
    }
    if (dé1==6 && dé2==3) {
      position = 26;
    }
    if (dé1==4 && dé2==5) {
      position = 53;
    }

    if ( position == 3 ) {
      while (positionjoueurbis!=3)
      {
        déplacement = déplacement*0*n;
      }
    }
    if (position == 9 || position == 18 || position == 27 || position == 36 || position == 45 || position == 54) {
      position += déplacement;
    }
    if (position==19) {
      déplacement = déplacement*0*2;
    }

    if ( position == 42 ) {
      position = 30;
    }

    if ( position == 52 ) {
      while (positionjoueurbis!=52)
      {
        déplacement = déplacement*0*n;
      }
    }

    if ( position == 58 ) {
      position = 0;
    }
    if ( position > 63 ) {
      position = 63 - (position - 63);
    }
    println(" Nouvelle position : " + position + "\n");
  }
  println(" Partie terminée ! " );
}
