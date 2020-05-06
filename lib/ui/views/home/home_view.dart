import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import '../../shared/app_colors.dart';
import '../../shared/shared_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: whiteMonoLetter,
            leading: IconButton(
              icon: Icon(Icons.card_giftcard),
              color: darkMonoGrey,
              onPressed: () {
                print("card pressed!");
              },
            ),
            centerTitle: true,
            title: IconButton(
              icon: Icon(
                Icons.healing,
                size: 35,
                color: lightPink,
              ),
              onPressed: () {
                print("Logo pressed!");
              },
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.wb_sunny,
                    color: darkMonoGrey,
                  ),
                  onPressed: () {
                    print("Sun pressed!");
                  }),
            ],
          ),
          body: SingleChildScrollView(
            child: RefreshIndicator(
              onRefresh: () async {},
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: smallFieldHeight),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Revisa tu estado con un test COVID-19",
                                  style: GoogleFonts.quicksand(
                                    color: whiteMonoLetter,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '''But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will''',
                                  style: GoogleFonts.quicksand(
                                    color: whiteMonoLetter,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        elevation: 3,
                        semanticContainer: false,
                        borderOnForeground: false,
                        color: lightPink,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(height: smallFieldHeight),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Global - COVID19",
                                  style: GoogleFonts.quicksand(
                                    color: darkBlue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Casos Totales",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Muertes",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Recuperados",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "2,000,000",
                                    style: GoogleFonts.quicksand(
                                      color: darkSoftBlue,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "500,000",
                                    style: GoogleFonts.quicksand(
                                      color: lightRed,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "1,000,000",
                                    style: GoogleFonts.quicksand(
                                      color: lightGreen,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nuevos: ",
                                        style: GoogleFonts.quicksand(
                                          color: mediumMonoGrey,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "+15,000",
                                        style: GoogleFonts.quicksand(
                                          color: darkSoftBlue,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nuevos: ",
                                        style: GoogleFonts.quicksand(
                                          color: mediumMonoGrey,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "+15,000",
                                        style: GoogleFonts.quicksand(
                                          color: lightRed,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nuevos: ",
                                        style: GoogleFonts.quicksand(
                                          color: mediumMonoGrey,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "+15,000",
                                        style: GoogleFonts.quicksand(
                                          color: lightGreen,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 33.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Ultima actualizacion: ",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "25 Abril, 11:06 PM",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        elevation: 3,
                        borderOnForeground: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(style: BorderStyle.none),
                        ),
                      ),
                      SizedBox(height: smallFieldHeight),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(),
                                      SizedBox(width: 5.0),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Republica Dominicana",
                                          style: GoogleFonts.quicksand(
                                            color: darkBlue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Cambiar",
                                      style: GoogleFonts.quicksand(
                                        color: darkBlue,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Casos Totales",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Muertes",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Recuperados",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "2,000,000",
                                    style: GoogleFonts.quicksand(
                                      color: darkSoftBlue,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "500,000",
                                    style: GoogleFonts.quicksand(
                                      color: lightRed,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "1,000,000",
                                    style: GoogleFonts.quicksand(
                                      color: lightGreen,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nuevos: ",
                                        style: GoogleFonts.quicksand(
                                          color: mediumMonoGrey,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "+15,000",
                                        style: GoogleFonts.quicksand(
                                          color: darkSoftBlue,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nuevos: ",
                                        style: GoogleFonts.quicksand(
                                          color: mediumMonoGrey,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "+15,000",
                                        style: GoogleFonts.quicksand(
                                          color: lightRed,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nuevos: ",
                                        style: GoogleFonts.quicksand(
                                          color: mediumMonoGrey,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "+15,000",
                                        style: GoogleFonts.quicksand(
                                          color: lightGreen,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 33.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Ultima actualizacion: ",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "25 Abril, 11:06 PM",
                                    style: GoogleFonts.quicksand(
                                      color: mediumMonoGrey,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        elevation: 3,
                        borderOnForeground: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(style: BorderStyle.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
