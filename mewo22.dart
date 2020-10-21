import 'dart:io';

import 'dart:math';
enum MOVE{rock, paper ,scissors}
 void main(){
   final rng = Random();
   while (true){
  stdout.write('rock, paper or scissors ? (r/p/s)');
  final input = stdin.readLineSync();
if (input == 'r' || input == 'p'||input == 's'){
 var playermove;
 if (input == 'r'){
   playermove = MOVE.rock;

 } else if (input == 'p'){
   playermove =MOVE.paper;
 } else {
   playermove = MOVE.scissors;
 }
 final random = rng.nextInt(3);
 final aiMOVE = MOVE.values[random];
 if (playermove == aiMOVE){
   print('it`s draw');
 } else if (playermove == MOVE.rock && aiMOVE == MOVE.scissors||
 playermove == MOVE.paper && aiMOVE == MOVE.rock ||playermove ==MOVE.scissors && aiMOVE == MOVE.paper)
 {
   print('you win');
 } else {
   print("you lose");
 }
  
} else if (input == 'q') {
  break;
} else{
  print('invalid input');
 }
   } 
}