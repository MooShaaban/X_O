import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white

          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 50.0,),
              Material(
                borderRadius: BorderRadiusDirectional.circular(25.0),
                color: Colors.transparent,
                elevation: 5.0,
                child: Container(
                  width: 320.0,
                  height: 220.0,
                  decoration: BoxDecoration(
                       gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffFFC300), Color(0xffFFB319),]
                      ),
                      borderRadius: BorderRadiusDirectional.circular(25.0)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10.0,),
                      Center(
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(120.0),

                          ),
                          child: CircleAvatar(
                            radius: 60.0,
                              child: Image(
                                  image: AssetImage('assets/images/profile.jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                        )
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text(
                          'Mohamed Shaaban',
                          style: GoogleFonts.yanoneKaffeesatz(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text(
                          'ID: 1256451346',
                          style: GoogleFonts.yanoneKaffeesatz(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              Container(
                height: 280.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index)=> profileInfo(index),
                    separatorBuilder: (context, index)=> SizedBox(width: 20.0,),
                    itemCount: 2
                ),
              ),

            ],
          ),
        )
      ],
    );
  }

  Widget profileInfo (int index) {
    List <Widget> A = [
      Material(
        borderRadius: BorderRadiusDirectional.circular(25.0),
        color: Colors.transparent,
        elevation: 5.0,
        child: Container(

          width: 320.0,
          height: 280.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff005555), Color(0xff069A8E),]
              ),
              borderRadius: BorderRadiusDirectional.circular(25.0)
          ),
          child: Column(
            children: [
              SizedBox(height: 15.0,),
              Center(
                child: Text(
                  'Total Bins Today',
                  style: GoogleFonts.yanoneKaffeesatz(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Center(
                      child: Text(
                        '5',
                        style: GoogleFonts.yanoneKaffeesatz(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 90,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Center(
                      child: Text(
                        'Bins',
                        style: GoogleFonts.yanoneKaffeesatz(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,

                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.0,),
              MaterialButton(
                onPressed: (){},
                elevation: 5.0,
                child: Container(
                  width: 250.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                      color: Color(0xffFFC300),
                      borderRadius: BorderRadiusDirectional.circular(20.0)
                  ),

                  child: Center(
                    child: Text(
                      'View Bins',
                      style: GoogleFonts.yanoneKaffeesatz(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,

                        ),

                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Material(
        borderRadius: BorderRadiusDirectional.circular(25.0),
        color: Colors.transparent,
        elevation: 5.0,
        child: Container(
          width: 320.0,
          height: 280.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff005555), Color(0xff069A8E),]
              ),
              borderRadius: BorderRadiusDirectional.circular(25.0)
          ),
          child: Column(
            children: [
              SizedBox(height: 15.0,),
              Center(
                child: Text(
                  'Total Earned Today',
                  style: GoogleFonts.yanoneKaffeesatz(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Center(
                      child: Text(
                        '130',
                        style: GoogleFonts.yanoneKaffeesatz(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 90,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Center(
                      child: Text(
                        'EGP',
                        style: GoogleFonts.yanoneKaffeesatz(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,

                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.0,),
              // MaterialButton(
              //   onPressed: (){},
              //   elevation: 5.0,
              //   child: Container(
              //     width: 250.0,
              //     height: 55.0,
              //     decoration: BoxDecoration(
              //         color: Color(0xffFFC300),
              //         borderRadius: BorderRadiusDirectional.circular(20.0)
              //     ),
              //
              //     child: Center(
              //       child: Text(
              //         'View Details',
              //         style: GoogleFonts.yanoneKaffeesatz(
              //           textStyle: TextStyle(
              //             color: Colors.white,
              //             fontSize: 30.0,
              //             fontWeight: FontWeight.bold,
              //
              //           ),
              //
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),

    ];
    return A[index];
  }
}
