import 'package:e7sebly/features/bmi/presentation/view/bmiScreen.dart';
import 'package:e7sebly/features/calculator/presentation/view/Calculator.dart';
import 'package:e7sebly/features/gpa/presentation/view/Gpa.dart';
import 'package:e7sebly/features/qrcode/presentation/view/QrCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/util/sizeConfig.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Color blue = const Color(0xFF1e6bdd); // colors variables
  Color blue2 = const Color(0xFF2787ee);
  Color dark = const Color(0xFF0d0e22);
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1D6BDD),
        body:
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                          Text(
                            'نورتنا',
                            style:TextStyle(
                              color: Colors.white,
                              fontFamily: "mess_medium",
                              fontSize: 50,

                            ),
                          ),
                          Text(
                            'هتحسب إيه النهارده',
                            style:TextStyle(
                              color: Colors.white,
                              fontFamily: "four",
                              letterSpacing: 1,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height:30,),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                    width: 600,
                    child:
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const qrcode()),
                          );
                        });
                      },
                      child: Container(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(28.0),
                          color: blue2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Image.asset(
                              'assets/img/icons/barcode.png',
                              height: 125,
                              width:125,
                            ),
                            const Text(
                              'الماسح الضوئي',
                              style:TextStyle(
                                color: Colors.white,
                                fontFamily: "three",
                                fontSize: 32,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'خدماتنا',
                      style:TextStyle(
                        color: Colors.white,
                        fontFamily: "three",
                        fontSize: 35,

                      ),
                    ),
                  ),
                  Expanded(child:
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap:(){
                            setState(() {
                              Navigator.pushReplacementNamed(context, "azkar");
                            });
                          },
                          child: Container(
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: blue2,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:  [
                                SizedBox(
                                  height: 125,
                                  width: 125,
                                  child: Image.asset(
                                    'assets/img/icons/Exchange.png',
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                                const Text(
                                  'تحويل العملات',
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontFamily: "three",
                                    fontSize: 25,

                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30.0,),
                      Expanded(
                        child: GestureDetector(
                          onTap:(){
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Calculator()),
                              );
                            });
                          },
                          child: Container(
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: blue2,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:  [
                                Image.asset(
                                  'assets/img/icons/budget.png',
                                  height: 125,
                                  width:125,
                                  filterQuality: FilterQuality.high,

                                ),
                                const Text(
                                  'آلة حاسبة',
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontFamily: "three",
                                    fontSize: 25,

                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  const SizedBox(height: 25,),
                  Expanded(child:
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap:(){
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const BmiScreen()),
                              );
                            });
                          },
                          child: Container(
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: blue2,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                Image.asset(
                                  'assets/img/icons/body-mass-index.png',
                                  height: 140,
                                  width:140,
                                  filterQuality: FilterQuality.high,

                                ),
                                const Text(
                                  'كتله الجسم',
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontFamily: "three",
                                    fontSize: 25,

                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30.0,),
                      Expanded(
                        child: GestureDetector(
                          onTap:(){
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => gpa()),
                              );
                            });
                          },
                          child: Container(
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              color: blue2,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:  [
                                Image.asset(
                                  'assets/img/icons/cum-laude.png',
                                  height: 140,
                                  width:140,
                                  filterQuality: FilterQuality.high,

                                ),
                                const Text(
                                  'المعدل التراكمي',
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontFamily: "three",
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            )
      ),
    );
  }
}
