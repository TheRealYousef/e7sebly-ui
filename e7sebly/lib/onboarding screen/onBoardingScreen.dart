import 'package:e7sebly/resources/styles.dart';
import 'package:flutter/material.dart';
import '../Pages/MainPage.dart';
import '../sizeConfig.dart';
import 'onboardingContnentsScreen.dart';

class OnboardingScrn extends StatefulWidget {
  const OnboardingScrn({Key? key}) : super(key: key);

  @override
  State<OnboardingScrn> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScrn> {
  late PageController _controller;
  var nameController=TextEditingController();


  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;


  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        color: _currentPage == index ? Color(0XFF3788FF) : Color(0XFFAFD0FF),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      curve: Curves.easeIn,
      width: _currentPage== index ? 18 : 6,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/img/icons/wall.png"),
        fit: BoxFit.cover,
              ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: PageView.builder(
                  itemCount: contents.length,
                  physics: const BouncingScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (value) => setState(() => _currentPage = value),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            contents[index].image,
                            height: SizeConfig.blockV! * 45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              contents.length,
                                  (int index) => _buildDots(
                                index: index,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                contents[index].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: darkText,
                                  fontFamily: "mess_bold",
                                  fontSize: (width <= 550) ? 25 : 20,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                contents[index].desc,
                                style: TextStyle(
                                  fontFamily: "mess_medium",
                                  fontWeight: FontWeight.w300,
                                  fontSize: (width <= 550) ? 16 : 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    _currentPage + 1== contents.length
                        ? Padding(
                      padding: const EdgeInsets.all(30),
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet<dynamic>(
                              isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => Container(
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: const BoxDecoration(
                                color:Color(0XFF1D6BDD),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 35,
                                  right: 35,
                                  bottom: 50,
                                  top: 70
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:  [
                                    Text(
                                      " تسجيل دخول ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "mess_semibold",
                                        fontSize: (width <= 550) ? 25 : 30,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              TextField(
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontFamily: "mess_semibold"
                                                ),
                                                textAlign: TextAlign.end,
                                                controller: nameController,
                                                keyboardType: TextInputType.text,

                                                decoration: InputDecoration(
                                                  hintText: 'من فضلك اكتب اسمك',
                                                  hintStyle: TextStyle(
                                                      fontSize: 16,
                                                    color: Colors.white,
                                                    fontFamily: "mess_semibold"
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(50),
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                  ),
                                                  filled: true,
                                                  contentPadding: EdgeInsets.all(16),
                                                  fillColor:Color(0XFF2585EC),
                                                ),
                                              ),
                                              Image.asset(
                                                  "assets/img/icons/slideup.png",
                                                height: 180,
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(context, 'main');
                                      },
                                      child: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 20,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0XFFFFD323),
                                        shape: CircleBorder(),
                                        elevation: 0,
                                        padding: (width <= 550)
                                            ? const EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 17)
                                            : const EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 22),
                                        textStyle: TextStyle(
                                            fontSize: (width <= 550) ? 13 : 17),
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF3788FF),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: (width <= 550)
                              ? const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 17)
                              : EdgeInsets.symmetric(
                              horizontal: width * 0.2, vertical: 25),
                          textStyle:
                          TextStyle(fontSize: (width <= 550) ? 15 : 17),
                        ),
                        child: const Text("يلا احسبلي",
                          style: TextStyle(
                            fontFamily: "mess_bold",
                          ),
                        ),
                      ),
                    )
                        : Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              _controller.jumpToPage(3);
                            },
                            style: TextButton.styleFrom(
                              elevation: 0,
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: (width <= 550) ? 18 : 22,
                              ),
                            ),
                            child: Text(
                              "تخطي",
                              style: TextStyle(color: darkText, fontFamily: "mess_bold"),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                            child: const Icon(
                                Icons.arrow_forward_ios_sharp,
                              size: 20,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0XFF3788FF),
                              shape: CircleBorder(),
                              elevation: 0,
                              padding: (width <= 550)
                                  ? const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 17)
                                  : const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 22),
                              textStyle: TextStyle(
                                  fontSize: (width <= 550) ? 13 : 17),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
