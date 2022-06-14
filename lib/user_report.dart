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


              Center(child: Image.asset(
                'assets/images/error.gif', width: 180.0, height: 180.0,)),
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
                    onPressed: () {
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
}


