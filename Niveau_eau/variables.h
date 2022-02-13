// ***********************************************************************
// ******************    Déclaration des variables     *******************
// ***********************************************************************

// ****************** déclaration des variables  ****************

float profondeur_cuve = 5.0;
float profondeur_cuve_tempo = profondeur_cuve;

unsigned int distance_1 = 50;
unsigned int distance_2 = 250;
unsigned int distance_3 = 400;

int distance_tempo_1 = distance_1;
int distance_tempo_2 = distance_2;
int distance_tempo_3 = distance_3;

double distance_mesure_X_courbe1[] = {1707, 7565, 10057};
double distance_cm_Y_courbe1[] = {distance_1, distance_2, distance_3};

bool relais_etat;
byte nombre_de_niveau;
long valeur_ultra_son;
long compteur = 0;

int temps_loop;
int temps_ultrason;
int temps_loop_current;

int volatile CLK_last_state;
int volatile CLK_state;
int volatile impulsion = 0;
int last_impulsion = -1;
unsigned int anti_rebond_rotary = 0;
unsigned int anti_rebond_btn = 0;

enum
{
  INFO,
  MENU_CHOIX,
  REGLAGE_1_1,
  REGLAGE_1_2,
  REGLAGE_1_3,
  MODIF_ETALON_1,
  MODIF_ETALON_2,
  MODIF_ETALON_3,
  REGLAGE_2,
  REGLAGE_2_2,
  REGLAGE_3,
} page = INFO;

bool appui_btn = 0;
int position_fleche = 0;

/* --- Déclaration des constantes des broches Entree/Sortie digital --- */

const byte relais_1_PIN = 7;
const byte relais_2_PIN = 8;
const byte trig_PIN = 5;
const byte echo_PIN = 6;

const byte rotary_enc_CLK_PIN = 2;
const byte rotary_enc_DT_PIN = 4;
const byte rotary_enc_SW_PIN = 3;

const byte tableau_niveau_PIN[] = {A0, A1, A2, A3, A6, A7}; //la premiere valeur "A" represente le PIN analogique du niveau le plus bas

/* --- Déclaration des constantes des broches analogique --- */

/* --- Déclaration des constantes des broches PWM --- */
