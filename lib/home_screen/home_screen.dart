import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool switchPressed = false;
String currentPlayer = 'X';
int modPlayer = 0;
bool gameOver= false;
List<int> playerX = [];
List<int> playerO = [];
String WW = '';


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              const SizedBox(height: 10.0,),
              SwitchListTile.adaptive(
                activeColor: Theme.of(context).splashColor,
                title: Text(
                    'Play vs computer?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bebasNeue(textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  )),
                ),
                  value: switchPressed,
                  onChanged: (bool value){
                  setState(() {
                    switchPressed= value ;
                    (currentPlayer == 'X')? currentPlayer=  'Y': currentPlayer= 'X';
                  });
                  },
              ),
              const SizedBox(height: 10.0,),
              Text(
                'It\'s $currentPlayer turn',
                style: GoogleFonts.yanoneKaffeesatz(
                  textStyle: const TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )
                ),
              ),
              const SizedBox(height: 30.0,),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 3,
                  padding: const EdgeInsetsDirectional.all(10.0),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1,
                  children: List.generate(
                      9,
                          (index)
                      {
                        return Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).splashColor,
                            borderRadius: BorderRadiusDirectional.circular(8.0),
                          ),
                          child: InkWell(
                            onTap: () => onTap(index),
                            child: Center(
                              child: Text(
                                drawPlayer(index),
                                style: TextStyle(
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Text(
                WW.toString(),
                style: GoogleFonts.yanoneKaffeesatz(
                    textStyle: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                ),
              ),
              const SizedBox(height: 10.0,),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).splashColor,
                  borderRadius: BorderRadiusDirectional.circular(8.0),
                ),
                child: MaterialButton(
                  elevation: 5.0,
                  onPressed: (){
                    setState(() {
                      playerX=[];
                      playerO=[];
                      currentPlayer= 'X';
                      WW= '';
                    });
                  },
                  child: Text(
                      'Repeat the game',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        )
                      ),
                    ),
                ),
              ),
              const SizedBox(height: 25.0,),
            ],
          ),
        ),
      ),
    );
  }


  void playGame (int index,String currentPlayer){

    if((playerX.ContainAll(0, 1, 2 ))||
        (playerX.ContainAll(3, 4, 5 ))||
        (playerX.ContainAll(6, 7, 8 ))||
        (playerX.ContainAll(0, 4, 5 ))||
        (playerX.ContainAll(2, 4, 6 ))||
        (playerX.ContainAll(0, 3, 6 ))||
        (playerX.ContainAll(1, 4, 7 ))||
        (playerX.ContainAll(0, 4, 8 ))||
        (playerX.ContainAll(2, 5, 8 )))
    {WW= checkWinner('x');}
    else if((playerO.ContainAll(0, 1, 2 ))||
        (playerO.ContainAll(3, 4, 5 ))||
        (playerO.ContainAll(6, 7, 8 ))||
        (playerO.ContainAll(0, 4, 5 ))||
        (playerO.ContainAll(2, 4, 6 ))||
        (playerO.ContainAll(0, 3, 6 ))||
        (playerO.ContainAll(1, 4, 7 ))||
        (playerO.ContainAll(0, 4, 8 ))||
        (playerO.ContainAll(2, 5, 8 )))
      {WW =checkWinner('O');}

    else
     { (currentPlayer== 'X')? playerX.add(index): playerO.add(index);}

  }

  String drawPlayer (int index){
    String P = '';
    setState(() {
      (playerX.contains(index))? P ='X':
      (playerO.contains(index))? P ='O': P= ' ';
    });
    return P;

  }

  String checkWinner(String win){
    String winner = 'The winner is $win ';
    return winner;

  }

  void onTap (int index){

    setState(() {
      if(((playerX.isEmpty)||(!playerX.contains(index)))&&
          ((playerO.isEmpty|| !playerO.contains(index)))&&
          (WW=='')) {
        playGame(index, currentPlayer);
        (currentPlayer == 'X') ? currentPlayer = 'O' : currentPlayer = 'X';
      }
    });
  }

}
extension ContainsAll on List {
  bool ContainAll(int x, int y, int z){
    return contains(x) && contains(y) && contains(z);

  }

}