import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  armorTitan.setPowerPoint(4);
  attackTitan.setPowerPoint(10);
  beastTitan.setPowerPoint(8);
  human.setPowerPoint(3);

  print("Armor Titan PowerPoint: ${armorTitan.getPowerPoint()}");
  print("Armor Titan Attack: ${armorTitan.terjang()}");

  print("Attack Titan PowerPoint: ${attackTitan.getPowerPoint()}");
  print("Attack Titan Attack: ${attackTitan.punch()}");

  print("Beast Titan PowerPoint: ${beastTitan.getPowerPoint()}");
  print("Beast Titan Attack: ${beastTitan.lempar()}");

  print("Human PowerPoint: ${human.getPowerPoint()}");
  print("Human Action: ${human.killAllTitan()}");
}
