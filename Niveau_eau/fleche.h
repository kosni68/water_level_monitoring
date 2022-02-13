void init_fleche(byte param_position_fleche, byte param_new_position_fleche)
{
  position_fleche = param_position_fleche;

  lcd.setCursor(0, position_fleche);
  if (position_fleche == 0)
  {
    lcd.print("<");
  }
  else
  {
    lcd.print(">");
  }

  position_fleche = param_new_position_fleche;

  anti_rebond_rotary = millis();
  last_impulsion = impulsion;
}

void menu_fleche()
{
  if (millis() - anti_rebond_rotary < 700)
  {
    return;
  }
  anti_rebond_rotary = millis();

  if (impulsion > last_impulsion + 1)
  {
    position_fleche++;
  }
  else if (impulsion < last_impulsion - 1)
  {
    position_fleche--;
  }
  else
  {
    return;
  }

  last_impulsion = impulsion;

  if (position_fleche < 0)
  {
    position_fleche = 3;
  }
  if (position_fleche > 3)
  {
    position_fleche = 0;
  }

  for (byte i = 0; i < 4; i++)
  {
    lcd.setCursor(0, i);
    lcd.print(" ");
  }

  lcd.setCursor(0, position_fleche);

  if (position_fleche == 0)
  {
    lcd.print("<");
  }
  else
  {
    lcd.print(">");
  }
}

void fleche_valider_annuler()
{
  if (millis() - anti_rebond_rotary < 700)
  {
    return;
  }
  anti_rebond_rotary = millis();

  if (impulsion > last_impulsion + 1)
  {
    position_fleche++;
  }
  else if (impulsion < last_impulsion - 1)
  {
    position_fleche--;
  }
  else
  {
    return;
  }

  last_impulsion = impulsion;

  if (position_fleche < 0)
  {
    position_fleche = 1;
  }
  if (position_fleche > 1)
  {
    position_fleche = 0;
  }

  lcd.setCursor(0, 3);
  lcd.print(" ");
  lcd.setCursor(10, 3);
  lcd.print(" ");

  if (position_fleche == 0)
  {
    lcd.setCursor(0, 3);
    lcd.print(">");
  }
  else
  {
    lcd.setCursor(10, 3);
    lcd.print(">");
  }
}

void fleche_reglage_1(unsigned int distance)
{
  if (millis() - anti_rebond_rotary < 700)
  {
    return;
  }
  anti_rebond_rotary = millis();

  if (impulsion > last_impulsion + 1)
  {
    position_fleche++;
  }
  else if (impulsion < last_impulsion - 1)
  {
    position_fleche--;
  }
  else
  {
    return;
  }

  last_impulsion = impulsion;

  if (position_fleche < 0)
  {
    position_fleche = 2;
  }
  if (position_fleche > 2)
  {
    position_fleche = 0;
  }

  lcd.setCursor(0, 3);
  lcd.print(" ");
  lcd.setCursor(10, 3);
  lcd.print(" ");

  if (position_fleche == 0)
  {
    lcd.setCursor(11, 1);
    lcd.print(">");
    lcd.print(distance);
    lcd.print("cm");
    lcd.print("<");
  }
  else if (position_fleche == 1)
  {
    lcd.setCursor(11, 1);
    lcd.print("<");
    lcd.print(distance);
    lcd.print("cm");
    lcd.print(">");
    lcd.setCursor(0, 3);
    lcd.print(">");
  }
  else
  {
    lcd.setCursor(11, 1);
    lcd.print("<");
    lcd.print(distance);
    lcd.print("cm");
    lcd.print(">");
    lcd.setCursor(10, 3);
    lcd.print(">");
  }
}

void fleche_reglage_2()
{
  if (millis() - anti_rebond_rotary < 700)
  {
    return;
  }
  anti_rebond_rotary = millis();

  if (impulsion > last_impulsion + 1)
  {
    position_fleche++;
  }
  else if (impulsion < last_impulsion - 1)
  {
    position_fleche--;
  }
  else
  {
    return;
  }

  last_impulsion = impulsion;

  if (position_fleche < 0)
  {
    position_fleche = 2;
  }
  if (position_fleche > 2)
  {
    position_fleche = 0;
  }

  lcd.setCursor(0, 3);
  lcd.print(" ");
  lcd.setCursor(10, 3);
  lcd.print(" ");

  if (position_fleche == 0)
  {
    lcd.setCursor(0, 2);
    lcd.print("      >modifier<    ");
  }
  else if (position_fleche == 1)
  {
    lcd.setCursor(0, 2);
    lcd.print("      <modifier>    ");
    lcd.setCursor(0, 3);
    lcd.print(">");
  }
  else
  {
    lcd.setCursor(0, 2);
    lcd.print("      <modifier>    ");
    lcd.setCursor(10, 3);
    lcd.print(">");
  }
}

void fleche_reglage_2_2()
{
  if (millis() - anti_rebond_rotary < 700)
  {
    return;
  }
  anti_rebond_rotary = millis();

  if (impulsion > last_impulsion)
  {
    profondeur_cuve_tempo = profondeur_cuve_tempo + 0.1;
    if (profondeur_cuve_tempo > 99)
    {
      profondeur_cuve_tempo = 99;
    }
    lcd.setCursor(7, 2);
    lcd.print("     ");
    lcd.setCursor(7, 2);
    lcd.print(profondeur_cuve_tempo);
  }
  else if (impulsion < last_impulsion)
  {
    profondeur_cuve_tempo = profondeur_cuve_tempo - 0.1;
    if (profondeur_cuve_tempo <= 0)
    {
      profondeur_cuve_tempo = 0;
    }

    lcd.setCursor(7, 2);
    lcd.print("     ");
    lcd.setCursor(7, 2);
    lcd.print(profondeur_cuve_tempo);
  }
  else
  {
    return;
  }

  last_impulsion = impulsion;
}

void fleche_distance_etalon(int & distance_tempo)
{
  if (millis() - anti_rebond_rotary < 700)
  {
    return;
  }
  anti_rebond_rotary = millis();

  if (impulsion > last_impulsion)
  {
    distance_tempo = distance_tempo + 1;
    if (distance_tempo > 999)
    {
      distance_tempo = 999;
    }
    lcd.setCursor(7, 2);
    lcd.print("     ");
    lcd.setCursor(7, 2);
    lcd.print(distance_tempo);
  }
  else if (impulsion < last_impulsion)
  {
    distance_tempo = distance_tempo - 1;
    if (distance_tempo <= 0)
    {
      distance_tempo = 0;
    }

    lcd.setCursor(7, 2);
    lcd.print("     ");
    lcd.setCursor(7, 2);
    lcd.print(distance_tempo);
  }
  else
  {
    return;
  }

  last_impulsion = impulsion;
}