import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserReport extends StatelessWidget {


  var nameController = TextEditingController();
  var userProblemController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Report a problem',
        style: GoogleFonts.yanoneKaffeesatz(
          textStyle: TextStyle(
            fontSize: 25
          )
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Center(child: Image.asset('assets/images/error.gif',width: 180.0,height: 180.0,)),
              SizedBox(height: 10.0,),
              Text('What\'s Wrong ?',
                style: GoogleFonts.yanoneKaffeesatz(
                    textStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    )
                ),),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  label: Text(
                      'Your full name',
                    style: GoogleFonts.yanoneKaffeesatz()
                  ),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 25.0),
              TextFormField(
                controller: userProblemController,
              textAlign: TextAlign.start,
              maxLines: 5,
              decoration: InputDecoration(
                label: Text(
                    'What\'s Wrong ?',
                    style: GoogleFonts.yanoneKaffeesatz()
                ),
                border: OutlineInputBorder(),
              ),
            ),
              SizedBox(height: 20.0,),
              Material(
                color: Colors.transparent,
                elevation: 5.0,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadiusDirectional.circular(8.0)
                  ),
                  child: MaterialButton(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    onPressed: (){
                      print(nameController.text);
                      print(userProblemController.text);
                    },
                    child: Center(
                        child: Text(
                            'Submit',
                          style: GoogleFonts.yanoneKaffeesatz(
                            textStyle: TextStyle(
                                color: Colors.white,
                              fontSize: 24.0
                            ),
                          )
                        )),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }



  Widget buildItem () {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 10,
        color: Colors.transparent,
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/Bin1.png'),
                width: 110.0,
                height: 110.0,
                fit: BoxFit.contain,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.0,),
                  Text(
                    'Bin ID',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Text('21/5/2022, 02:54 PM'),
                  SizedBox(height: 10.0,),
                  Text('Location: 15485, 45645'),
                  // Container(
                  //   width: 220.0,
                  //   child: RoundedProgressBar(
                  //     percent: 70.0,
                  //     height: 22.0,
                  //     style: RoundedProgressBarStyle(
                  //         colorProgress: Colors.teal,
                  //         colorProgressDark: Colors.teal.shade600,
                  //         backgroundProgress: Colors.teal.shade100
                  //
                  //
                  //     ),
                  //   ),
                  // ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
