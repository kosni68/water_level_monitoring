
// ***********************************************************************
// *******************   Inclusion des librairies     ********************
// ***********************************************************************

#include <Arduino.h>
#include <LiquidCrystal_I2C.h> //  pour l'afficheur LCD
#include <Wire.h>              //  pour la communication i2c
#include "Polynomial.h"

// ***********************************************************************
// **********************    Création des objets     *********************
// ***********************************************************************

//------------ Création d'un objet afficheur LCD alphanumérique ----
LiquidCrystal_I2C lcd(0x3F, 20, 4);
Polynomial courbe1(2, 3); //Polynome du second degrée , nombre de points

// ***********************************************************************
// *****************   Inclusion des sous programmes    ******************
// ***********************************************************************
#include "variables.h"
void lecture_capteur_ultrason();
void lecture_PIN_analogique(byte choix_PIN);
#include "fleche.h"
#include "page.h"

// ***********************************************************************
// ***********************     FONCTION SETUP     ************************
// ***********************************************************************
void setup()
{

  Serial.begin(115200); //initialise le moniteur serie

  nombre_de_niveau = sizeof(tableau_niveau_PIN); //recupère la taille du tableau
  Serial.print("nombre_de_niveau :");
  Serial.println(nombre_de_niveau);

  courbe1.calcul_coef(distance_mesure_X_courbe1, distance_cm_Y_courbe1);

  // ------- Initialisation des PIN -------
  pinMode(relais_1_PIN, OUTPUT);
  pinMode(relais_2_PIN, OUTPUT);
  pinMode(trig_PIN, OUTPUT);
  pinMode(echo_PIN, INPUT);

  pinMode(rotary_enc_CLK_PIN, INPUT);
  pinMode(rotary_enc_DT_PIN, INPUT);
  pinMode(rotary_enc_SW_PIN, INPUT_PULLUP);

  digitalWrite(trig_PIN, LOW);

  lcd.init();      // initialisation de l'afficheur
  lcd.backlight(); //allumage du retroeclairage

  lcd.clear(); // efface LCD
  //lcd.blink(); // active clignotement

  // Lit l'état initial de la rotary_enc_CLK_PIN
  CLK_last_state = digitalRead(rotary_enc_CLK_PIN);

  attachInterrupt(digitalPinToInterrupt(rotary_enc_CLK_PIN), rotary_encoder, CHANGE);
  attachInterrupt(digitalPinToInterrupt(rotary_enc_SW_PIN), rotary_encoder_btn, FALLING);
} // fin setup()

// ***********************************************************************
// ***********************     FONCTION LOOP     *************************
// ***********************************************************************

void loop()
{
  //Serial.print(" position_fleche : ");
  //Serial.println(position_fleche);

  switch (page)
  {
    // ***********************      case INFO:     *************************
  case INFO:
    lecture_capteur_ultrason();
    page_info();
    if (appui_btn == 1)
    {
      lcd.clear();
      menu_choix();
      init_fleche(1, 1);
      appui_btn = 0;
    }
    break;

    // ***********************      case MENU_CHOIX:     *************************
  case MENU_CHOIX:
    menu_fleche();
    if (appui_btn == 1)
    {
      if (position_fleche == 0)
      {
        lcd.clear();
        page_info();
      }
      else if (position_fleche == 1)
      {
        lcd.clear();
        page_reglage_1_1(distance_1);
        init_fleche(3, 1);
      }
      else if (position_fleche == 2)
      {
        lcd.clear();
        page_reglage_2();
        init_fleche(3, 1);
      }
      else if (position_fleche == 3)
      {
        lcd.clear();
        page_reglage_3();
      }
      appui_btn = 0;
    }
    break;

    // ***********************      case REGLAGE_1_1:     *************************
  case REGLAGE_1_1:
    lecture_capteur_ultrason();
    lcd.setCursor(15, 2);
    lcd.print(valeur_ultra_son);
    if (valeur_ultra_son < 10000)
    {
      lcd.setCursor(19, 2);
      lcd.print(" ");
    }

    fleche_reglage_1(distance_tempo_1);
    if (appui_btn == 1)
    {
      if (position_fleche == 0)
      {
        page_modif_distance_1();
      }
      else if (position_fleche == 1)
      {
        page_reglage_1_2(distance_2);
        init_fleche(3, 1);
        distance_1 = distance_tempo_1;
        distance_cm_Y_courbe1[0] = 50;
        distance_mesure_X_courbe1[0] = valeur_ultra_son;
      }
      else
      {
        menu_choix();
        init_fleche(0, 0);
        distance_tempo_1 = distance_1;
      }
      appui_btn = 0;
    }
    break;

    // ***********************      case REGLAGE_1_2:     *************************
  case REGLAGE_1_2:
    lecture_capteur_ultrason();
    lcd.setCursor(15, 2);
    lcd.print(valeur_ultra_son);
    if (valeur_ultra_son < 10000)
    {
      lcd.setCursor(19, 2);
      lcd.print(" ");
    }
    fleche_reglage_1(distance_tempo_2);
    if (appui_btn == 1)
    {
      if (position_fleche == 0)
      {
        page_modif_distance_2();
      }
      else if (position_fleche == 1)
      {
        page_reglage_1_3(distance_3);
        init_fleche(3, 1);
        distance_2 = distance_tempo_2;
        distance_cm_Y_courbe1[1] = 150;
        distance_mesure_X_courbe1[1] = valeur_ultra_son;
      }
      else
      {
        menu_choix();
        init_fleche(0, 0);
         distance_tempo_2 = distance_2;
      }
      appui_btn = 0;
    }
    break;

    // ***********************      case REGLAGE_1_3:     *************************
  case REGLAGE_1_3:
    lecture_capteur_ultrason();
    lcd.setCursor(15, 2);
    lcd.print(valeur_ultra_son);
    if (valeur_ultra_son < 10000)
    {
      lcd.setCursor(19, 2);
      lcd.print(" ");
    }
    fleche_reglage_1(distance_tempo_3);
    if (appui_btn == 1)
    {
      if (position_fleche == 0)
      {
        page_modif_distance_3();
      }
      else if (position_fleche == 1)
      {
        menu_choix();
        init_fleche(0, 0);
        distance_3 = distance_tempo_3;
        distance_cm_Y_courbe1[2] = 300;
        distance_mesure_X_courbe1[2] = valeur_ultra_son;
        courbe1.calcul_coef(distance_mesure_X_courbe1, distance_cm_Y_courbe1);
      }
      else
      {
        menu_choix();
        init_fleche(0, 0);
        distance_tempo_3 = distance_3;
      }
    }
    appui_btn = 0;
    break;

    // ***********************      case MODIF_ETALON_1:     *************************
  case MODIF_ETALON_1:
    fleche_distance_etalon(distance_tempo_1);
    if (appui_btn == 1)
    {
      page_reglage_1_1(distance_tempo_1);
      init_fleche(3, 1);
      appui_btn = 0;
    }
    break;    // ***********************      case MODIF_ETALON_2:     *************************
  case MODIF_ETALON_2:
    fleche_distance_etalon(distance_tempo_2);
    if (appui_btn == 1)
    {
      page_reglage_1_2(distance_tempo_2);
      init_fleche(3, 1);
      appui_btn = 0;
    }
    break;    // ***********************      case MODIF_ETALON_3:     *************************
  case MODIF_ETALON_3:
    fleche_distance_etalon(distance_tempo_3);
    if (appui_btn == 1)
    {
      page_reglage_1_3(distance_tempo_3);
      init_fleche(3, 1);
      appui_btn = 0;
    }
    break;
    // ***********************      case REGLAGE_2:     *************************
  case REGLAGE_2:
    fleche_reglage_2();
    if (appui_btn == 1)
    {
      if (position_fleche == 0)
      {
        page_modif_prof_cuve();
      }
      else if (position_fleche == 1)
      {
        menu_choix();
        init_fleche(0, 0);
        profondeur_cuve = profondeur_cuve_tempo;
      }
      else
      {
        menu_choix();
        init_fleche(0, 0);
        profondeur_cuve_tempo = profondeur_cuve;
      }
      appui_btn = 0;
    }
    break;

    // ***********************      case REGLAGE_2_2:     *************************
  case REGLAGE_2_2:
    fleche_reglage_2_2();
    if (appui_btn == 1)
    {
      page_reglage_2();
      init_fleche(3, 1);
      appui_btn = 0;
    }
    break;

    // ***********************      case REGLAGE_3:     *************************
  case REGLAGE_3:
    lecture_capteur_ultrason();
    lcd.setCursor(7, 2);
    lcd.print(courbe1.resultat(valeur_ultra_son));
    lcd.print("   ");
    if (appui_btn == 1)
    {
      menu_choix();
      init_fleche(0, 0);
      appui_btn = 0;
    }
    break;

    // ***********************      case default:     *************************
  default:
    break;
  }

  temps_loop = millis() - temps_loop;
  temps_loop_current = temps_loop;

  /*Serial.print(F("Temps execution loop : "));
  Serial.println(temps_loop_current);*/

  temps_loop = millis();

} // fin loop()

void lecture_PIN_analogique(byte choix_PIN)
{
  /*Serial.print("valeur analogique : ");
  Serial.println(analogRead(tableau_niveau_PIN[choix_PIN]));
  Serial.println(map(analogRead(tableau_niveau_PIN[choix_PIN]), 0, 1023, 0, 500) / 100.0);*/
}

void lecture_capteur_ultrason()
{
  if (millis() - temps_ultrason < 500)
  {
    return;
  }
  temps_ultrason = millis();

  digitalWrite(trig_PIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig_PIN, LOW);
  long lecture_echo = pulseIn(echo_PIN, HIGH);
  if (lecture_echo != 0)
  {
    valeur_ultra_son = lecture_echo;
    Serial.print("valeur_ultra_son : ");
    Serial.println(valeur_ultra_son);
  }

  Serial.print("lecture_echo : ");
  Serial.println(lecture_echo);
}

void rotary_encoder()
{
  //Serial.println("rotary_encoder: ");
  CLK_state = digitalRead(rotary_enc_CLK_PIN); // Lit l'état "actuel" de rotary_enc_CLK_PIN
  // Si l'état précédent et l'état actuel de la sortie A sont différents, cela signifie qu'une impulsion s'est produite
  if (CLK_state != CLK_last_state)
  {
    // Si l'état outputB est différent de l'état outputA, cela signifie que le codeur tourne dans le sens des aiguilles d'une montre
    if (digitalRead(rotary_enc_DT_PIN) != CLK_state)
    {
      impulsion++;
    }
    else
    {
      impulsion--;
    }
    //Serial.print("Position: ");
    //Serial.println(page);
  }
  CLK_last_state = CLK_state;
}

void rotary_encoder_btn()
{
  if (millis() - anti_rebond_btn < 800)
  {
    return;
  }
  appui_btn = 1;

  /*Serial.print("rotary_encoder_btn : ");
  Serial.println(compteur);
  compteur++;*/
  anti_rebond_btn = millis();
}
