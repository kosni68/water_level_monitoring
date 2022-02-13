void page_info()
{
  page = INFO;

  lcd.setCursor(0, 0);
  lcd.print("Niveau d'eau :      ");

  for (byte i = 0; i < nombre_de_niveau; i++)
  {
    if (analogRead(tableau_niveau_PIN[i]) > 80)
    {
      lcd.setCursor(i, 1);
      lcd.print("*");
      /*Serial.print("Niveau : ");
      Serial.print(i);
      Serial.println(" ON");*/

      lecture_PIN_analogique(i);

      if (i == 0)
      {

        digitalWrite(relais_1_PIN, HIGH);
        digitalWrite(relais_2_PIN, HIGH);

        lcd.setCursor(0, 3);
        lcd.print("Relais ON ");
        //Serial.println("Relais ON");
      }
    }
    else
    {
      lcd.setCursor(i, 1);
      lcd.print("_");
      /*Serial.print("Niveau :            ");
      Serial.print(i);
      Serial.println(" OFF");*/

      lecture_PIN_analogique(i);

      if (i == 0)
      {

        digitalWrite(relais_1_PIN, LOW);
        digitalWrite(relais_2_PIN, LOW);

        lcd.setCursor(0, 3);
        lcd.print("Relais OFF");
        //Serial.println("Relais OFF");
      }
    }
  }

  lcd.setCursor(0, 2);
  lcd.print("Quantite :");

  if (valeur_ultra_son != 0)
  {
    //Serial.print("Distance en cm :");
    //Serial.println(courbe1.resultat(valeur_ultra_son));
    lcd.setCursor(11, 2);
    lcd.print(map(courbe1.resultat(valeur_ultra_son),0,profondeur_cuve*100,0,100));
    lcd.print("%  ");
  }

  //Serial.println("");
}

void menu_choix()
{
  page = MENU_CHOIX;
  lcd.setCursor(0, 0);
  lcd.print("        Menu        ");

  lcd.setCursor(0, 1);
  lcd.print(" Etalonnage capteur ");

  lcd.setCursor(0, 2);
  lcd.print(" Parametre cuve     ");

  lcd.setCursor(0, 3);
  lcd.print(" Distance           ");
}

void page_reglage_1_1(unsigned int distance)
{
  page = REGLAGE_1_1;
  lcd.setCursor(0, 0);
  lcd.print("   Etalonnage 1/3   ");
  lcd.setCursor(0, 1);
  lcd.print("distance :");
  lcd.setCursor(11, 1);
  lcd.print("<");
  lcd.print(distance);
  lcd.print("cm");
  lcd.print(">");
  lcd.setCursor(0, 2);
  lcd.print("valeur mesure:");
  lcd.setCursor(0, 3);
  lcd.print(" Valider");
  lcd.setCursor(10, 3);
  lcd.print(" Annuler");
}

void page_reglage_1_2(unsigned int distance)
{
  page = REGLAGE_1_2;
  lcd.setCursor(0, 0);
  lcd.print("   Etalonnage 2/3   ");
  lcd.setCursor(0, 1);
  lcd.print("distance :");
  lcd.setCursor(11, 1);
  lcd.print("<");
  lcd.print(distance);
  lcd.print("cm");
  lcd.print(">");
  lcd.setCursor(0, 2);
  lcd.print("valeur mesure:");
  lcd.setCursor(16, 2);
  lcd.print(valeur_ultra_son);
  lcd.setCursor(0, 3);
  lcd.print(" Valider");
  lcd.setCursor(10, 3);
  lcd.print(" Annuler");
}

void page_reglage_1_3(unsigned int distance)
{
  page = REGLAGE_1_3;
  lcd.setCursor(0, 0);
  lcd.print("   Etalonnage 3/3   ");
  lcd.setCursor(0, 1);
  lcd.print("distance :");
  lcd.setCursor(11, 1);
  lcd.print("<");
  lcd.print(distance);
  lcd.print("cm");
  lcd.print(">");
  lcd.setCursor(0, 2);
  lcd.print("valeur mesure:");
  lcd.setCursor(16, 2);
  lcd.print(valeur_ultra_son);
  lcd.setCursor(0, 3);
  lcd.print(" Valider");
  lcd.setCursor(10, 3);
  lcd.print(" Annuler");
}

void page_reglage_2()
{
  page = REGLAGE_2;
  lcd.setCursor(0, 0);
  lcd.print("   Profondeur cuve  ");
  lcd.setCursor(0, 1);
  lcd.print(" Valeur : ");
  lcd.setCursor(12, 1);
  lcd.print(profondeur_cuve_tempo);
  lcd.setCursor(0, 2);
  lcd.print("      <modifier>    ");
  lcd.setCursor(0, 3);
  lcd.print(" Valider");
  lcd.setCursor(10, 3);
  lcd.print(" Annuler");
}

void page_modif_prof_cuve()
{
  page = REGLAGE_2_2;
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("   Profondeur cuve  ");
  lcd.setCursor(7, 2);
  lcd.print(profondeur_cuve_tempo);
}

void page_modif_distance_1()
{
  page = MODIF_ETALON_1;
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("  Distance etalon  ");
  lcd.setCursor(7, 2);
  lcd.print(distance_tempo_1);
}

void page_modif_distance_2()
{
  page = MODIF_ETALON_2;
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("  Distance etalon  ");
  lcd.setCursor(7, 2);
  lcd.print(distance_tempo_2);
}

void page_modif_distance_3()
{
  page = MODIF_ETALON_3;
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("  Distance etalon  ");
  lcd.setCursor(7, 2);
  lcd.print(distance_tempo_3);
}

void page_reglage_3()
{
  page = REGLAGE_3;
  lcd.setCursor(0, 0);
  lcd.print("      Distance      ");
}